/*
Navicat MySQL Data Transfer

Source Server         : 11
Source Server Version : 50559
Source Host           : 60.205.212.196:3306
Source Database       : imooc

Target Server Type    : MYSQL
Target Server Version : 50559
File Encoding         : 65001

Date: 2018-05-27 17:44:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_file
-- ----------------------------
DROP TABLE IF EXISTS `tb_file`;
CREATE TABLE `tb_file` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `focntent` blob,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_file
-- ----------------------------
INSERT INTO `tb_file` VALUES ('1', 'aa.jpg', 0xFFD8FFE000104A46494600010100000100010000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC0001108012C00D903012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F6D029714A052E2B9CB0029E2900A78145808A5CF0475CD5A39F2467AD40E381F5A99B763DAAE24B23C520A752629318B8A4229683D2A406E0D14EA4A2C3129314EC5252B0098A4C53A8F7A0636929D46280198A314EC5262801845262A4A4C52023A4C54845308E6801A4531854948452B010114DC54AC29B8A065D1D69C0518A515A102814EA414A2801ADD2A73FEAEA26E9537FCB3AB88990D14B49498C28A5A0D260251451523131494EA4A004A31451400946294D25002628C52D2521898A4A7525021B4845388A43400C229B4F229A6900C229B8A79A6E2819768C528A5AD091053852528A0047195F4A947FABA8CF4A947FABAA8899177A28A29318507A52D21E94804A28A29019FAC6B16BA1E9D25EDDB10883851D58FA0AF16D53E31F8824BE6FB0C16D0400FCA853713F539AE9BE2AEA45A3B6B38079934B218A34ED918C93F8FF002AC6D2BE1ADBFD9D6E35099E5B865CE07014D43925B9B4617436F7E2B6B7A6EAF17CD6F7103229920298DB919C061CFF003AF59D035DB3F11E9316A164D946E1D0FDE8D87553EF5F3DF8CB45B8D3EE15A43BCA2E124C72CA3B1F702BA1F83BAE3DA788E4D39DCF917D1F03B798BC83F9647E5549A6AE89946C7BB5069692999894529A6D2B0C28A28A43129B4FA8DFEF502034D34948452B8086928EF4B4202ED14B456820A51494B4001E9522FF00ABFC2A36E94F4FF5757113233477A5349DAA58C5A0F4A00A31C5201B51DC4A20B79663D2342C7F019A96B33C472F91E19D525FEE5A4A7FF1D3430478A5A5D5C6B9E29D3E53BA4314724AAB8DDF3139EE47AFAD7A35B5C5E3D948D32ED75E17F7607E9923F5AE6BE1DD969F2DA26B10A32DD45E65A4A0B655D8ED2A40EC70547E75D6497A61822B79D3CB662C72C841EB8F4F6AE791DB157D91E77E30B6BDBCD3249EE22B94781B23CC09B5C67A8DBC8FC6B8EF0A5D1D3BC51A4CF9C08EE9549F62715EB7E2FBE82CBC17A94D3E0131144DC31963C0C5784DADCB2E5C939DC9203DFAD5C1DD113B5CFB0292AAE9973F6DD2AD2EB3CCB12B9FA91CD5BAB3986D253A9298869A4A71A4A430A8DBAD3E98DD6900DA4A5A4A4037F8A971477A5A680B828A0507AD6820A70A414A3BD002374A7C6414E29ADD29D1FDCAA8EE26328ED41A052631C293B52D06900DAC0F1A894F837545854B48D0150A0649CF15BF51CE3F7449C6073CD4BD86B738ED03471E19F0DDAD8C4BB672BE65C38193E610377F203E8053F50BCB932DBAC3652DD49B1B023503A63A93C0EB597E2BF1D5868D74BA7476F35EEA2C4010C5C0C9E80B7A9CF606BAFB1B79122432AED90A8DC031201EE01AC795B66FCCA28F1FF19F853C77E2A4C9B186D6CE3CB2DB9B8058E3B9C679AF3692C6E6C1161BC85A29578656F43C8AFAE93D2BC93E30E8A856DAFA38C290A55C81DB3FFD735ADACB4214B99EA779E049CCDE0FB10D9DD1AF9673EDD0FE5835D1D72DF0F9587842CD8F478D08FF00BE403FA835D4D0B6225BB10D2668638A89A41DA8BD843C9A4CD3573D734EA4014D3D69D4D3D680636929690D210DEF9A766933CE2968432D8A5A4A756AC4277A5A31CD2D0021E94E8FEE535BA53A2FB9551DC4C65028340A4C62D2D252D20100C9F6AA37F30DAC3202460B124F1C55AB897C98BFDA3D2B8DF185E37F644DA75B7CF7D77198A08C0E59DBE51F4EB9FC0D6727AF29705D4C6F08F84E4BEF1449AF6A3B5FC924AAE3ACA7BFE00E7EA7DABD21C61B8C545A5D97F64E8D6B665BCC9228D55DFF00BCD8E4D4BC9393576B2B12DF33B8A05739E33D25354D2A4F371E5448D2393E80671FA57478C2D65F8934DBBD67C3F77A7D9CC9049709E5991C12029EBD3DB349EC09D999DF0F5B1E03D2D98F54623E9BDB15D119B270A39AC3F0CE9EDA668B1D917DD1DB4B2C287D42BB01FCAB6C8556057AD4DDEC396E260904B1E7D290819E0529E73CD148428A5A41D28A602E69ADD69691BAD002521A0D252010F514EA61EA29D8A622E77A70A4EF456802D2D251400372B4B08C273487A52C5D0934E3B898D34A2834828631696929AF2A4632CC07E34AF6033EF9E579F62C6E71D3038354ACED0D85F4FA8DEB2BCCE02C518FE0033FE3576E752182B11FC6B1E69A4965009DC49E95CCE493BA3A229B5666FC77D0DE300ADB5BFBADD6A72BB7AFE35990D89882990618F6F4AB8321429271D6B68C9B5A98C924F41ECE4B7B7A54A847D2A203A53D996289A46380A093548456F914ED8F014B17C0EE49C93F99A7F7ACF7D4AD626196C0C52B6AF6AA572FD6B3B88BF484E2B3DB59B319CC9D053A1D4E0B9655858B93D31401794F14ECD625CF89F4CB3B97B69A70B2A75151FF00C25DA57698FF00DF268B8EC6F6691BAD609F186963FE5A37FDF26A293C65A6E78673FF000134C0E873495CD1F19D80E8243FF01A61F1A597FCF393FEF9A4074C4F2296B943E35B20798A5FFBE697FE138B2FF9E337FDF3401DCF7A5149DE9456C20A5A4A5A4007A52C7D0D21E9505C3B2DAC811D5242A4296F5A77B6A16B8E92548C166385F5AA4FAB421CC7190F27F741C9FCA9047E72B47B4C8A5B3CF0052C3610C52F99B159FA0551855AC9B9365FBA8619EF6E33B232ABEBD2AB3DB4EE72F22FE79ADA58B3F7CE7D1474AAD8026E9FC552E1DC14FB19D159879029258935A8D676EB080502AA32BE47072A73FD2ACB9C138193E82ABC93796AD2BB6150163E9815718A892E4D924A379523BD3255C4B8158367E33D1E44DD79AAD8ABEE24042C063DF23AF5AAFA8FC43F0C58B869F52E187CAC90BB0FCC0AB68474ABDA8BA4F32D1E3FEF715C743F14FC1F2607F6A95FF7ADE4FF00E26BA2D335CD375BB769F4DBC8EE61538253B1F70791537020934A8A46C15A57D2212572A38AD1246FA712BC54D80C8934787730DA3915243649A7DB36C03CD61807D2B4769E5B3C0AACE4C8D9349E8347367C2904F3B4F2125DCE493DEB4E1F0CD9246018949F522B6220075A9495A6905CC51E1CB31FF2C97F2A43E1EB41FF002C53F2ADBCAD212B4018BFF08FDAFF00CF04FCA8FEC0B5FF009E31FE55B395A4CAD0063FF605A77893F2A77FC23F67FF003C93F2AD6CAD2EE5A622D52D25432DDC51704E4FA0AB6EC04F51C93C710F99B9F4AA135EB6C2CCC224F7EB5512E1AE5F65AC4D29EEC7A0FC6A5CBB0EC68BDD4921C46368F5A36471FCF336F6F4AAEB6D240E0CD26E723200E8B52C56ED70CC3785C01CE3353ADEC318F7524AC22880504E062B4634F2D02E7381D7D6ABC1662090B17DC7A0E318AB018B1C20CFA9EC2AE29ADC4C79214649C5532A5A527A0CFE356F605E49DCDEA6ABB11E6FE344908B58509E958BACCDF66D02FEE07CDE5DB48E39EB8526B61D43C7B72467B8AC5D67EC4FA71D3EE6E0402F018230A40663824803E80FE14E408F30B0F126952C04DA406E27C7FA8DA03A9EFC9E08FA571BE31BA9AF9D1A48D6268C728ADB80FF00EBD5BF1E683368BAECB3C0A52DE722685D0602923240F4C1C81ED5C7CDA84F3A1498EF278DE7AD0CAB90C79E2BD8BE0D5E7CFA8D9363E644987E0483FCC578F2E78AED3E1C6B11E93E2BB477908599BC893D83703F0CE0FE152C0FA1D9578CD34A82C3144A49DB8E39A73111C5EE6912473BFF0002F414C55A4033926A68D79CE2A7718F540052ED1E94B9F6A39F4AB109B47A50517D29DF852127D28018517D2808BE94FC9F4A4C9F4A4026C5F4A36AFA52E4FA5193E9401537DCDD0C8FDDA7AD56763B8C7671F9D3742E7EE8ABEB6D24FCDC3617B46BD3F1AB688B1A85450A0761428DF71DCC7834132C9E76A13999BA88D78515B314490A848D02A8E800A752F7AB4AC229DE7FAE5FF7696CDD54BE4F614CBB6F32E638D08C9F9771E80F26ACC10241C8C963D58F535297BF70E852D55E5482274768FF00D26152063E656915483ED826B4C600C0181593ADC85ACC6D563B6E206C01D84A84FE82B4E2904B1875FBA791569AB88731AAAE7F79F8D586CD54663E68FC2A64C658B8B886CED25B9B8916386142F23B745503249FC2BE7DB0F17DD78ABE2DD8DF36E167179AB6D09FF9671F96D96FF78F19FAE3B0AF47F8C1AB7F67F81DED55807BE904279C1D8396C7E407D09AF23F85B6EB37886F2F5F1B6183CA407BB3119C7E0A69B1A47A7F8BD83682D398D24584F9722BAE46D6E54FE791F957835E2AA4EE571B73DBB57BBEB1A841636EA6ED3CDB690186E5075643C13F5E847BE2BC6FC43A3BE8DAB5C59BB0923FBF0CA3EECB1B0CAB8F62314FA0196A4648CD5BB47F2E65753865E4115515430CF7A923CA9E2A467D43E1ED45B55F0F58DF31CBC9102C7D58707F506AF33976E7B571DF0D2E5E4F03DBA9392B2BAFEBFF00D7AEC557E5CD66FB087D4E830B508049E297E7F7A6844DDF14B500DD9EF4BF37BD3B813506A2F9BDE90EEF7A2E04B9A3350FCDEF49F37BD17026CD2D573BBDE8F9BDE8B817A9692A092E954EC8FE66EFE82ADBB013BC8B1AEE63815524B8924381F227A7734C04B1DCEDB9A861CD436057BD731C5148BC149037F3AD5471222B29E1864561EAEC52C958750E3FAD5ED1AE166B50A0FDDE9F4A22F5B015B5F8E4FB2EE070819371079FBEBFD335B3146B146B1A0C2A8C0159DAF9FF008945C1F4DA7F2615A75A256101E9555B01EAD1AE2FE23F885BC3BE14B99A17DB7771FE8F063A866EADF80C9FAE2948678E7C56F157FC245E26921824CD958E608707866CFCEDF8918FA01577E18DB79BA55CC6578130763EF8E39FC2B8086CE4B9B88E18D4BC8E7000EA6BDA7C2DA4A685A1795D6573BA43EFE83D8529148E6BC53A85CBFDBE27F9E186EC421BB83E546DCFE679F6ACBB56FF00849BC372E9CDF36A7A6234B687BCB07578FDCAFDE1EDB856B5EAA5CDB78803F21F516507D0AC310CFE75C3595EDC69B7B1DDDB398EE207DCA47A8FE94D6C0CA8BD2A78C7355D0E545588C6481DC9A407BCFC348B6783203EB2487F5AED17A0AE4FE1C907C11678FEFC9FFA11AEBD17730151D44C9A35C0FAD38F028C1F5A420E40CD57410A3EED028238EB4807BD0038D21A31EF487EB40052714107D69307D6900B451CD1CFAD3021BABB0331A0CB7435120E071834FF002B32BB28DA0B1CB1EBF85222103AE6AA56B13A8E5A71EB4E58095DDB800691861B1907E950519FACAEEB0E07F18A7687673427CC93E452385EE6AD5CFF00A8CFA1152594BBB0B537F7876D0875FE344BD3E9113F956A565788948D075039E96EE7FF001D35A9CD6C9EA48B5E67F15F47BCD4AD21956277B5814B6E419DA4F5247D00E6BD2C649EBC566EA3743FD5A9A99CACAE5455D9E25E13D152D6CD6EDA3C5CDC1DCBBBAAC7D87E3D7F2AEBA5984566BEF935A1A869F1EF32C6BB1BB95AE62E751B27BE16173A8436B85F99DD490BF80EFEDC565CE9B36F66EDA1CC5ACC6F741D66E139CEA939FD131FA62B8B988DCEDEB9AF5FD33C33A0DB681369FA6F8820BC9A699A660F852CCD81C2E723803D6B9AB9F85BAB7CFE4DD5A3039C062CA7F91AB534BA91CACF3F8F8C55CB504C80E338E6BA2FF856BE255385B689FF00DD997FAE2A2B5F0B6AA9AEB68B242B1DE11820B655415DD92467B53E64C5667AB7C2C984BE11542798AE1D71F803FD6BBF880C64D729E05F0CCFE1BD2E4B5B99D66795FCCCA2E02F0063DFA57582218EA6A56E4B1FC522F249A6B4781D4D2AC7F28E4D5087F149819A6F97EF4797EF400E34949E5FB9A698FF00DA3400FA299E5FFB4693CB3FDE3480929299E59FEF1A3CB3FDEA008DA603E45197CFE5F5A7C20328C91F8555995E4B878D46D50793EB56631B10283D38AA95AC242372E71D2976F352885C738CD21471FC26A2C32BDD1FF4623E955ECE4DB709CF048156AE91DAD980527A76AA96B04A6E11BCB6DA0839C62A5FC45AD8B3E22E7C3DA97AFD965FFD04D68E47AD676BE3FE241A88FF00A7597FF413576370D1AB7A815B1984F288A076CF415CF349BD8B13926B7A68C4B115F5AC56B1B84623CBC8EC41AC6A26D9B5369199751CB759863F9148F9A4EFF8562B784EC573B615E7924F527D4D75E34FB9233E5803DC8A67D9246C8C0E38EB5972B35F6896CCE0A4F0CC56D770DCC298786459171C720E6BBDB98E3122BC5FEADC6E5A63E9CCDD4A8A52A638D62273B38069D9D81CD498910024E959CE560F14BC92411E24DAAB201F37DD1D4D68C67F782AB5EDBDC4DA84663859903231704600C807AFD0D257B869D4E9507CA31DAA4EB8F7A8A360063AD3C1E71DABA0E615FA7D69474A66E0CDDF8A76E1EF4C43A929A707B9A32077345C07521A4DC3D4D1B87AD002D251B87AD1B87AD001451B87AD1B87AD080898FCC4D0BF3301EB486A58179DDE94B71968507A5341A0D69710A7EED3323239A56384A80484B01C75A96C0835CE743D407ADB49FF00A09AB16C41B688FF00B03F9556D732746BD1EB6F27FE826A4B324DA43FF5CD7F953622D6454721031934ADD2ABCC718CD4B192F9836707BD55C019C74CE6A5452EBC1E2A095821233D2A408A6931803963DAA9DCE632B9EE2ACA1DC779EFD296EE35783A72BCD44B54690766538482C09AD5B455641B802076AC74CA915A907DCCD4C3465D4D8B4F1321CA7DDF426856CE41EA2A22490064D3C38DA43727B1AD4C49D48EBEB4EC8AACCD9231499A77116B3466AAE68C9A2E059CD155B27D6804FA9A2E059A4AAF93EA69371F5345C0B34556DC7D4D2EE6F5345C0910066AB0B804815590FCE2AD0EA69A01D41E9452115403243888D5753F3020D5960361A8150061C54BDC08F561BB4CB91EB0B8FF00C74D374E6DDA7DAB67AC287F41566F903D9CA31D5187E954F4B23FB1AC4F736F19FF00C7453622E544FF0031C7A5399B8A6E368E6A460EE23873DFB567C877B6CFC4D4B3C9B8939F9474A8A3439C9EA6A59485276E00152A9DD2283D3238A63AFCF5228E54FA11480A9791AC572554607A559B7398AABEA47FD31AAD5800EA72323150BE23597C048693BD5868D00C90691635C0E0D6D63022A4A9FCA5F434D6450338340C8E8A9020233D297CA5F534808696A5F257D4D1E50F534584454952F943FBD47943FBD45808A8CD4BE48FEF52793FED50304FBC2AE0EB5497EF0FAD5C1D6A9087521A28F6AA011BEE9A841F9BA54CDF70FD2A01D6A580B3B92AC0F031597A1B97D12CC1E7642880E382028E47B55EBD86464508540DC0B67D2A868ADFF120D3540FF9758BFF0040143BDC0D25F98E6A2B993680A3A9A7F9A1179538159D712B1391CB31C0152DE8343B3BDB1D875A9906064D411478F97F33533F651D2A461D5B352A2EE200F5A871CD5B8130BBBB9E95484CCFD4D71744FA806ACE99F75AA3D517E78DBD4549A67DC6ACD7C66AFE02EBF2547E34EA68E5C9F4E29D5B1885252D25300E3D28A51D68A004A29692800A4A7525200A4A5A4A0085FE594FD6AD03CD5362CEE4E39CD5A8882BB58F342DC07E6968202D3771F4A6038FDD22AAC8DB3EB56093B09C76ACF95CB3F34A405C99BE403BD52D2A06B6D2ACE2752AE9022107B6140C5585CC8FCFE344F279684F73D28F302BDCCB93B0741D6A90F9E4DFD87029F2127E50796A5FB8A00FC2A1948910ED527B9A0649E7AD22396038E94F5C963F5A560B8AAA59801DEAF0185C0ED55E1077838E338CD5F2113927802B48A25993AA903CA07D0D3F4EF96173EF506A49334A1B05E3038C0E47D692C2599EEA78BCB22155521C8FBC73D07E1596D336FB06AA70BF5E696A3F37FD93479A3D0D6B73124A2A3F347BD1E6AFBD17024146698245C75A3CC5F5A007D14CF317D6977AFA8A00752526F5FEF0A4DE3D45003A8A4DC3D45191EA28019F81A703E951090FF74D3C480F507F2A2E22CAB65429E7DE8208A8048A3D6A51302A460FE34EF70091B1191ED596DB8B70A6AEC8F81EE6A08C65837E552F519321D8BCA9F7AA534DE6B16FE1ED53DD4BB5760EA7AD673B6E6110E9D5BE949B1A43E21925D872DD3D854ACA78F534918C9E7A0A9E35CFCFF9548D88A81540C73DE9D1C6CEDB5064D1DEAC5B4C90A48C5589F619AA4BB925944585403C9FE54C72493939154C6A76B2B7DE914FA3C6CA7F51530BA871C6E3F4526A9C90587103DF3ED4F45C9E9F89AAED778E91487FE038FE749F6998FDD81BFE04715371D8B547155BCE97BA8CFD2944D27FCF3A77113E05181E82A2F35FFE799A5F30F78DA8B8126D1E82936AFA0A6F9A31CAB0FC293CE4F7FCA9E803B62FA51E5AFA537CE8FF00BD479A9FDE14B4017CA4F4A4F297347989FDE1F9D2798B9FBC3F3A060625F7A3CA5F5346F5FEF0FCE8DCBEA2801A081DE9E185479E69EB4C924047F9148CE1549A1B84E2A9DC31DE076C668603F991A959C46B9EC2AB1242F5A8324F7A9B8D0E9A6C0691B9EF50C2A4212DF7D8E4FF008532662D3C719FBA4337E2318FE753C5D6A4B2651D1475356C280B815043CB93E952B671D4D3448D38CD5B84AA26D20FE555A1199866AD9AB421EA030CAF4A32067240FC6915882314E354047200CB80CBF9D203F4A6EE3E63503AE2900ECD2138A5DABFDD1F9540E40CE157F2A403C4C18E029CD3F71FEE9AAAA79CE3353273EDF4269012E690D057DCFE74DC7B9A062903D0537629FE11F95183FDE3FA52127FBC680031467B0A8648875556A567623AE3E950BC8FB7EF1A4C07AC049CB640A77909EA698B2BE704E47BD49BCD080FFFD9);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'cxx', '123456');