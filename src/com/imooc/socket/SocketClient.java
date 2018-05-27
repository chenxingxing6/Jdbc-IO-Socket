package com.imooc.socket;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Scanner;

import com.imooc.entity.File;
import com.imooc.entity.Users;
import com.imooc.service.FileService;
import com.imooc.service.UsersService;
import com.imooc.util.CommendTranser;

public class SocketClient {
	Scanner scan = new Scanner(System.in);
	private Socket socket = null;

	public void showMainMenu() {
		System.out.println("******JDBC+IO+Socket*******");
		System.out.println("1 用户登录  ，2 用户注册 ，3 退出");
		System.out.println("***************************");
		System.out.println("请选择：》》》》》》》》");
		int choose = scan.nextInt();
		switch (choose) {
			case 1:
				showlogin();
				break;
			case 2:
				showzhuce();
				break;
			case 3:
				System.out.println("再见了，你炸了");
				System.exit(0);
			default:
				System.out.println(" 输入有误");
				System.exit(0);
		}
	}

	public void showlogin() {
		Users users = new Users();
		System.out.println("欢迎使用登录");
		CommendTranser transer = new CommendTranser();
		int count = 0;
		while (true) {
			if (count >= 3) {
				System.out.println("您已经三次输入失败，再见");
				System.exit(0);
			}
			System.out.println("请输入用户名");
			users.setUsername(scan.next());
			System.out.println("请输入密码");
			users.setPassword(scan.next());
			transer.setCmd("login");
			transer.setData(users);
			count++;
			try {
				socket = new Socket("localhost", 1346);
				sendData(transer);
				transer=getDate();
				System.out.println("   " + transer.getResult());
				System.out.println("***********************");
				if (transer.isFlag()) {
					break;
				}
			} catch (UnknownHostException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				clossAll();
			}

		}
		showUploadFile();

	}

	public void showzhuce() {
		Users users = new Users();
		System.out.println("欢迎使用注册");
		CommendTranser transer = new CommendTranser();
		while (true) {
			System.out.println("请输入用户名");
			users.setUsername(scan.next());
			System.out.println(" 请输入密码");
			users.setPassword(scan.next());
			System.out.println("请再次输入密码");
			String rePassword = scan.next();
			if (!users.getPassword().equals(rePassword)) {
				System.out.println("俩次输入不一致");
				System.out.println("**************");
				continue;
			}
			transer.setCmd("zhuce");
			transer.setData(users);
			try {
				socket = new Socket("localhost", 1346);
				sendData(transer);
				transer=getDate();
				System.out.println("  " + transer.getResult());
				System.out.println("***********************");
				if (transer.isFlag()) {
					break;
				}
			} catch (UnknownHostException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				clossAll();
			}
		}
		showUploadFile();
	}

	public void showUploadFile() {
		System.out.println("请输入上传的绝对路径 如： (e://imooc//dog.jpg)");
		String path = scan.next();

		File file = null;
		FileInputStream fis = null;
		BufferedInputStream bis = null;
		String fname = path.substring(path.lastIndexOf("/") + 1);
		try {
			fis = new FileInputStream(path);
			byte[] focntent = new byte[fis.available()];
			bis = new BufferedInputStream(fis);
			bis.read(focntent);
			file = new File(fname, focntent);

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				bis.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		CommendTranser transer = new CommendTranser();
		transer.setCmd("uploadFile");
		transer.setData(file);
		try {
			socket = new Socket("localhost", 1346);
			sendData(transer);
			transer=getDate();
			System.out.println(transer.getResult());
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			clossAll();
		}
	}


	public CommendTranser sendData(CommendTranser transer) {
		ObjectOutputStream oos=null;//对象输出流
		try {
			oos=new ObjectOutputStream(socket.getOutputStream());
			oos.writeObject(transer);
			return transer;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}


	public CommendTranser  getDate(){
		ObjectInputStream ois =null;//对象输入流
		CommendTranser transer = null;
		try {
			ois=new ObjectInputStream(socket.getInputStream());
			transer= (CommendTranser) ois.readObject();
		} catch (IOException e) {
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return transer;
	}

	public void clossAll() {
		try {
			socket.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
