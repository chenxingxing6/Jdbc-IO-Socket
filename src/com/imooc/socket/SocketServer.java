package com.imooc.socket;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

public class SocketServer {
	public static void main(String[] args) {
		try {
			ServerSocket serversocket=new ServerSocket(1346);
			Socket socket=null;
			System.out.println("");
			while(true){
				socket=serversocket.accept();
				System.out.println("欢迎您..");
				//开启多线程
				SocketThread thread=new SocketThread(socket);
				thread.start();

			}
		} catch (IOException e) {
			e.printStackTrace();
		}


	}
}
