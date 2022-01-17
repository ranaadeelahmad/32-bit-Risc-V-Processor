`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2022 09:58:41 AM
// Design Name: 
// Module Name: Instruction_Memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//module Instruction_Memory(input [31:0] pc,output reg [31:0] Instruction );

//always@(pc[31:0])
//	case (pc[31:0])
	          
    
//          32'd0: Instruction = 32'h91c00093;
//          32'd4: Instruction = 32'h8ba00113;
//          32'd8: Instruction = 32'haa900193;
//          32'd12: Instruction = 32'h87e00213;
//          32'd16: Instruction = 32'h69700293;
//          32'd20: Instruction = 32'h8fb00313;
//          32'd24: Instruction = 32'h3fd00393;
//          32'd28: Instruction = 32'h06900413;
//          32'd32: Instruction = 32'habd00493;
//          32'd36: Instruction = 32'he0000513;
//          32'd40: Instruction = 32'hd9600593;
//          32'd44: Instruction = 32'hf1c00613;
//          32'd48: Instruction = 32'hbfc00693;
//          32'd52: Instruction = 32'h74500713;
//          32'd56: Instruction = 32'h5ae00793;
//          32'd60: Instruction = 32'h28100813;
//          32'd64: Instruction = 32'hb2e00893;
//          32'd68: Instruction = 32'h07400913;
//          32'd72: Instruction = 32'hc3100993;
//          32'd76: Instruction = 32'hc6f00a13;
//          32'd80: Instruction = 32'h4e000a93;
//          32'd84: Instruction = 32'h32600b13;
//          32'd88: Instruction = 32'he5000b93;
//          32'd92: Instruction = 32'hb0c00c13;
//          32'd96: Instruction = 32'hb1c00c93;
//          32'd100: Instruction = 32'h8bf00d13;
//          32'd104: Instruction = 32'h9bc00d93;
//          32'd108: Instruction = 32'h42300e13;
//          32'd112: Instruction = 32'h73200e93;
//          32'd116: Instruction = 32'hfff00f13;
//          32'd120: Instruction = 32'h01e09fb3;
//          32'd124: Instruction = 32'h01e11fb3;
//          32'd128: Instruction = 32'h01e19fb3;
//          32'd132: Instruction = 32'h01e21fb3;
//          32'd136: Instruction = 32'h01e29fb3;
//          32'd140: Instruction = 32'h01e31fb3;
//          32'd144: Instruction = 32'h01e39fb3;
//          32'd148: Instruction = 32'h01e41fb3;
//          32'd152: Instruction = 32'h01e49fb3;
//          32'd156: Instruction = 32'h01e51fb3;
//          32'd160: Instruction = 32'h01e59fb3;
//          32'd164: Instruction = 32'h01e61fb3;
//          32'd168: Instruction = 32'h01e69fb3;
//          32'd172: Instruction = 32'h01e71fb3;
//          32'd176: Instruction = 32'h01e79fb3;
//          32'd180: Instruction = 32'h01e81fb3;
//          32'd184: Instruction = 32'h01e89fb3;
//          32'd188: Instruction = 32'h01e91fb3;
//          32'd192: Instruction = 32'h01e99fb3;
//          32'd196: Instruction = 32'h01ea1fb3;
//          32'd200: Instruction = 32'h01ea9fb3;
//          32'd204: Instruction = 32'h01eb1fb3;
//          32'd208: Instruction = 32'h01eb9fb3;
//          32'd212: Instruction = 32'h01ec1fb3;
//          32'd216: Instruction = 32'h01ec9fb3;
//          32'd220: Instruction = 32'h01ed1fb3;
//          32'd224: Instruction = 32'h01ed9fb3;
//          32'd228: Instruction = 32'h01ee1fb3;
//          32'd232: Instruction = 32'h01ee9fb3;
//          32'd236: Instruction = 32'h01ef1fb3;
//          32'd240: Instruction = 32'h01e0efb3;
//          32'd244: Instruction = 32'h01e16fb3;
//          32'd248: Instruction = 32'h01e1efb3;
//          32'd252: Instruction = 32'h01e26fb3;
//          32'd256: Instruction = 32'h01e2efb3;
//          32'd260: Instruction = 32'h01e36fb3;
//          32'd264: Instruction = 32'h01e3efb3;
//          32'd268: Instruction = 32'h01e46fb3;
//          32'd272: Instruction = 32'h01e4efb3;
//          32'd276: Instruction = 32'h01e56fb3;
//          32'd280: Instruction = 32'h01e5efb3;
//          32'd284: Instruction = 32'h01e66fb3;
//          32'd288: Instruction = 32'h01e6efb3;
//          32'd292: Instruction = 32'h01e76fb3;
//          32'd296: Instruction = 32'h01e7efb3;
//          32'd300: Instruction = 32'h01e86fb3;
//          32'd304: Instruction = 32'h01e8efb3;
//          32'd308: Instruction = 32'h01e96fb3;
//          32'd312: Instruction = 32'h01e9efb3;
//          32'd316: Instruction = 32'h01ea6fb3;
//          32'd320: Instruction = 32'h01eaefb3;
//          32'd324: Instruction = 32'h01eb6fb3;
//          32'd328: Instruction = 32'h01ebefb3;
//          32'd332: Instruction = 32'h01ec6fb3;
//          32'd336: Instruction = 32'h01ecefb3;
//          32'd340: Instruction = 32'h01ed6fb3;
//          32'd344: Instruction = 32'h01edefb3;
//          32'd348: Instruction = 32'h01ee6fb3;
//          32'd352: Instruction = 32'h01eeefb3;
//          32'd356: Instruction = 32'h01ef6fb3;
//          32'd360: Instruction = 32'h01e0cfb3;
//          32'd364: Instruction = 32'h01e14fb3;
//          32'd368: Instruction = 32'h01e1cfb3;
//          32'd372: Instruction = 32'h01e24fb3;
//          32'd376: Instruction = 32'h01e2cfb3;
//          32'd380: Instruction = 32'h01e34fb3;
//          32'd384: Instruction = 32'h01e3cfb3;
//          32'd388: Instruction = 32'h01e44fb3;
//          32'd392: Instruction = 32'h01e4cfb3;
//          32'd396: Instruction = 32'h01e54fb3;
//          32'd400: Instruction = 32'h01e5cfb3;
//          32'd404: Instruction = 32'h01e64fb3;
//          32'd408: Instruction = 32'h01e6cfb3;
//          32'd412: Instruction = 32'h01e74fb3;
//          32'd416: Instruction = 32'h01e7cfb3;
//          32'd420: Instruction = 32'h01e84fb3;
//          32'd424: Instruction = 32'h01e8cfb3;
//          32'd428: Instruction = 32'h01e94fb3;
//          32'd432: Instruction = 32'h01e9cfb3;
//          32'd436: Instruction = 32'h01ea4fb3;
//          32'd440: Instruction = 32'h01eacfb3;
//          32'd444: Instruction = 32'h01eb4fb3;
//          32'd448: Instruction = 32'h01ebcfb3;
//          32'd452: Instruction = 32'h01ec4fb3;
//          32'd456: Instruction = 32'h01eccfb3;
//          32'd460: Instruction = 32'h01ed4fb3;
//          32'd464: Instruction = 32'h01edcfb3;
//          32'd468: Instruction = 32'h01ee4fb3;
//          32'd472: Instruction = 32'h01eecfb3;
//          32'd476: Instruction = 32'h01ef4fb3;
//          32'd480: Instruction = 32'h01e0ffb3;
//          32'd484: Instruction = 32'h01e17fb3;
//          32'd488: Instruction = 32'h01e1ffb3;
//          32'd492: Instruction = 32'h01e27fb3;
//          32'd496: Instruction = 32'h01e2ffb3;
//          32'd500: Instruction = 32'h01e37fb3;
//          32'd504: Instruction = 32'h01e3ffb3;
//          32'd508: Instruction = 32'h01e47fb3;
//          32'd512: Instruction = 32'h01e4ffb3;
//          32'd516: Instruction = 32'h01e57fb3;
//          32'd520: Instruction = 32'h01e5ffb3;
//          32'd524: Instruction = 32'h01e67fb3;
//          32'd528: Instruction = 32'h01e6ffb3;
//          32'd532: Instruction = 32'h01e77fb3;
//          32'd536: Instruction = 32'h01e7ffb3;
//          32'd540: Instruction = 32'h01e87fb3;
//          32'd544: Instruction = 32'h01e8ffb3;
//          32'd548: Instruction = 32'h01e97fb3;
//          32'd552: Instruction = 32'h01e9ffb3;
//          32'd556: Instruction = 32'h01ea7fb3;
//          32'd560: Instruction = 32'h01eaffb3;
//          32'd564: Instruction = 32'h01eb7fb3;
//          32'd568: Instruction = 32'h01ebffb3;
//          32'd572: Instruction = 32'h01ec7fb3;
//          32'd576: Instruction = 32'h01ecffb3;
//          32'd580: Instruction = 32'h01ed7fb3;
//          32'd584: Instruction = 32'h01edffb3;
//          32'd588: Instruction = 32'h01ee7fb3;
//          32'd592: Instruction = 32'h01eeffb3;
//          32'd596: Instruction = 32'h01ef7fb3;
//          32'd600: Instruction = 32'hfff0ef93;
//          32'd604: Instruction = 32'hfff16f93;
//          32'd608: Instruction = 32'hfff1ef93;
//          32'd612: Instruction = 32'hfff26f93;
//          32'd616: Instruction = 32'hfff2ef93;
//          32'd620: Instruction = 32'hfff36f93;
//          32'd624: Instruction = 32'hfff3ef93;
//          32'd628: Instruction = 32'hfff46f93;
//          32'd632: Instruction = 32'hfff4ef93;
//          32'd636: Instruction = 32'hfff56f93;
//          32'd640: Instruction = 32'hfff5ef93;
//          32'd644: Instruction = 32'hfff66f93;
//          32'd648: Instruction = 32'hfff6ef93;
//          32'd652: Instruction = 32'hfff76f93;
//          32'd656: Instruction = 32'hfff7ef93;
//          32'd660: Instruction = 32'hfff86f93;
//          32'd664: Instruction = 32'hfff8ef93;
//          32'd668: Instruction = 32'hfff96f93;
//          32'd672: Instruction = 32'hfff9ef93;
//          32'd676: Instruction = 32'hfffa6f93;
//          32'd680: Instruction = 32'hfffaef93;
//          32'd684: Instruction = 32'hfffb6f93;
//          32'd688: Instruction = 32'hfffbef93;
//          32'd692: Instruction = 32'hfffc6f93;
//          32'd696: Instruction = 32'hfffcef93;
//          32'd700: Instruction = 32'hfffd6f93;
//          32'd704: Instruction = 32'hfffdef93;
//          32'd708: Instruction = 32'hfffe6f93;
//          32'd712: Instruction = 32'hfffeef93;
//          32'd716: Instruction = 32'hfff0cf93;
//          32'd720: Instruction = 32'hfff14f93;
//          32'd724: Instruction = 32'hfff1cf93;
//          32'd728: Instruction = 32'hfff24f93;
//          32'd732: Instruction = 32'hfff2cf93;
//          32'd736: Instruction = 32'hfff34f93;
//          32'd740: Instruction = 32'hfff3cf93;
//          32'd744: Instruction = 32'hfff44f93;
//          32'd748: Instruction = 32'hfff4cf93;
//          32'd752: Instruction = 32'hfff54f93;
//          32'd756: Instruction = 32'hfff5cf93;
//          32'd760: Instruction = 32'hfff64f93;
//          32'd764: Instruction = 32'hfff6cf93;
//          32'd768: Instruction = 32'hfff74f93;
//          32'd772: Instruction = 32'hfff7cf93;
//          32'd776: Instruction = 32'hfff84f93;
//          32'd780: Instruction = 32'hfff8cf93;
//          32'd784: Instruction = 32'hfff94f93;
//          32'd788: Instruction = 32'hfff9cf93;
//          32'd792: Instruction = 32'hfffa4f93;
//          32'd796: Instruction = 32'hfffacf93;
//          32'd800: Instruction = 32'hfffb4f93;
//          32'd804: Instruction = 32'hfffbcf93;
//          32'd808: Instruction = 32'hfffc4f93;
//          32'd812: Instruction = 32'hfffccf93;
//          32'd816: Instruction = 32'hfffd4f93;
//          32'd820: Instruction = 32'hfffdcf93;
//          32'd824: Instruction = 32'hfffe4f93;
//          32'd828: Instruction = 32'hfffecf93;
//          32'd832: Instruction = 32'hfff0ff93;
//          32'd836: Instruction = 32'hfff17f93;
//          32'd840: Instruction = 32'hfff1ff93;
//          32'd844: Instruction = 32'hfff27f93;
//          32'd848: Instruction = 32'hfff2ff93;
//          32'd852: Instruction = 32'hfff37f93;
//          32'd856: Instruction = 32'hfff3ff93;
//          32'd860: Instruction = 32'hfff47f93;
//          32'd864: Instruction = 32'hfff4ff93;
//          32'd868: Instruction = 32'hfff57f93;
//          32'd872: Instruction = 32'hfff5ff93;
//          32'd876: Instruction = 32'hfff67f93;
//          32'd880: Instruction = 32'hfff6ff93;
//          32'd884: Instruction = 32'hfff77f93;
//          32'd888: Instruction = 32'hfff7ff93;
//          32'd892: Instruction = 32'hfff87f93;
//          32'd896: Instruction = 32'hfff8ff93;
//          32'd900: Instruction = 32'hfff97f93;
//          32'd904: Instruction = 32'hfff9ff93;
//          32'd908: Instruction = 32'hfffa7f93;
//          32'd912: Instruction = 32'hfffaff93;
//          32'd916: Instruction = 32'hfffb7f93;
//          32'd920: Instruction = 32'hfffbff93;
//          32'd924: Instruction = 32'hfffc7f93;
//          32'd928: Instruction = 32'hfffcff93;
//          32'd932: Instruction = 32'hfffd7f93;
//          32'd936: Instruction = 32'hfffdff93;
//          32'd940: Instruction = 32'hfffe7f93;
//          32'd944: Instruction = 32'hfffeff93;
//          32'd948: Instruction = 32'h00002d03;
//          32'd952: Instruction = 32'h00102203;
//          32'd956: Instruction = 32'h00202903;
//          32'd960: Instruction = 32'h00302f03;
//          32'd964: Instruction = 32'h00402403;
//          32'd968: Instruction = 32'h00502e03;
//          32'd972: Instruction = 32'h00602b03;
//          32'd976: Instruction = 32'h00702b03;
//          32'd980: Instruction = 32'h00802003;
//          32'd984: Instruction = 32'h00902f03;
//          32'd988: Instruction = 32'h00a02483;
//          32'd992: Instruction = 32'h00b02283;
//          32'd996: Instruction = 32'h00c02983;
//          32'd1000: Instruction = 32'h00d02283;
//          32'd1004: Instruction = 32'h00e02603;
//          32'd1008: Instruction = 32'h00f02383;
//          32'd1012: Instruction = 32'h01002383;
//          32'd1016: Instruction = 32'h01102883;
//          32'd1020: Instruction = 32'h01202783;
//          32'd1024: Instruction = 32'h01302e03;
//          32'd1028: Instruction = 32'h01402583;
//          32'd1032: Instruction = 32'h01502b03;
//          32'd1036: Instruction = 32'h01602d03;
//          32'd1040: Instruction = 32'h01702c83;
//          32'd1044: Instruction = 32'h01802d83;
//          32'd1048: Instruction = 32'h01902b83;
//          32'd1052: Instruction = 32'h01a02b03;
//          32'd1056: Instruction = 32'h01b02283;
//          32'd1060: Instruction = 32'h01c02a83;
//          32'd1064: Instruction = 32'h01d02783;
//          32'd1068: Instruction = 32'h01e02603;
//          32'd1072: Instruction = 32'h01f02483;
//          32'd1076: Instruction = 32'h02002303;
//          32'd1080: Instruction = 32'h02102603;
//          32'd1084: Instruction = 32'h02202503;
//          32'd1088: Instruction = 32'h02302183;
//          32'd1092: Instruction = 32'h02402f83;
//          32'd1096: Instruction = 32'h02502703;
//          32'd1100: Instruction = 32'h02602183;
//          32'd1104: Instruction = 32'h02702003;
//          32'd1108: Instruction = 32'h02802203;
//          32'd1112: Instruction = 32'h02902b03;
//          32'd1116: Instruction = 32'h02a02603;
//          32'd1120: Instruction = 32'h02b02e03;
//          32'd1124: Instruction = 32'h02c02283;
//          32'd1128: Instruction = 32'h02d02003;
//          32'd1132: Instruction = 32'h02e02a03;
//          32'd1136: Instruction = 32'h02f02383;
//          32'd1140: Instruction = 32'h03002b03;
//          32'd1144: Instruction = 32'h03102483;
//          32'd1148: Instruction = 32'h03202483;
//          32'd1152: Instruction = 32'h03302c83;
//          32'd1156: Instruction = 32'h03402303;
//          32'd1160: Instruction = 32'h03502183;
//          32'd1164: Instruction = 32'h03602f83;
//          32'd1168: Instruction = 32'h03702b03;
//          32'd1172: Instruction = 32'h03802c03;
//          32'd1176: Instruction = 32'h03902583;
//          32'd1180: Instruction = 32'h03a02783;
//          32'd1184: Instruction = 32'h03b02303;
//          32'd1188: Instruction = 32'h03c02a83;
//          32'd1192: Instruction = 32'h03d02083;
//          32'd1196: Instruction = 32'h03e02503;
//          32'd1200: Instruction = 32'h03f02483;
//          32'd1204: Instruction = 32'h04002a03;
//          32'd1208: Instruction = 32'h04102303;
//          32'd1212: Instruction = 32'h04202b03;
//          32'd1216: Instruction = 32'h04302103;
//          32'd1220: Instruction = 32'h04402483;
//          32'd1224: Instruction = 32'h04502903;
//          32'd1228: Instruction = 32'h04602e03;
//          32'd1232: Instruction = 32'h04702d83;
//          32'd1236: Instruction = 32'h04802d03;
//          32'd1240: Instruction = 32'h04902d83;
//          32'd1244: Instruction = 32'h04a02583;
//          32'd1248: Instruction = 32'h04b02883;
//          32'd1252: Instruction = 32'h04c02e03;
//          32'd1256: Instruction = 32'h04d02a03;
//          32'd1260: Instruction = 32'h04e02303;
//          32'd1264: Instruction = 32'h04f02903;
//          32'd1268: Instruction = 32'h05002283;
//          32'd1272: Instruction = 32'h05102f03;
//          32'd1276: Instruction = 32'h05202083;
//          32'd1280: Instruction = 32'h05302803;
//          32'd1284: Instruction = 32'h05402903;
//          32'd1288: Instruction = 32'h05502483;
//          32'd1292: Instruction = 32'h05602203;
//          32'd1296: Instruction = 32'h05702783;
//          32'd1300: Instruction = 32'h05802903;
//          32'd1304: Instruction = 32'h05902e83;
//          32'd1308: Instruction = 32'h05a02183;
//          32'd1312: Instruction = 32'h05b02a03;
//          32'd1316: Instruction = 32'h05c02503;
//          32'd1320: Instruction = 32'h05d02703;
//          32'd1324: Instruction = 32'h05e02b83;
//          32'd1328: Instruction = 32'h05f02603;
//          32'd1332: Instruction = 32'h06002803;
//          32'd1336: Instruction = 32'h06102603;
//          32'd1340: Instruction = 32'h06202583;
//          32'd1344: Instruction = 32'h06302983;
//          32'd1348: Instruction = 32'h06402a83;
//          32'd1352: Instruction = 32'h06502603;
//          32'd1356: Instruction = 32'h06602a83;
//          32'd1360: Instruction = 32'h06702e03;
//          32'd1364: Instruction = 32'h06802383;
//          32'd1368: Instruction = 32'h06902d03;
//          32'd1372: Instruction = 32'h06a02b83;
//          32'd1376: Instruction = 32'h06b02603;
//          32'd1380: Instruction = 32'h06c02683;
//          32'd1384: Instruction = 32'h06d02803;
//          32'd1388: Instruction = 32'h06e02403;
//          32'd1392: Instruction = 32'h06f02883;
//          32'd1396: Instruction = 32'h07002603;
//          32'd1400: Instruction = 32'h07102e03;
//          32'd1404: Instruction = 32'h07202383;
//          32'd1408: Instruction = 32'h07302703;
//          32'd1412: Instruction = 32'h07402e83;
//          32'd1416: Instruction = 32'h07502103;
//          32'd1420: Instruction = 32'h07602083;
//          32'd1424: Instruction = 32'h07702003;
//          32'd1428: Instruction = 32'h07802f83;
//          32'd1432: Instruction = 32'h07902f83;
//          32'd1436: Instruction = 32'h07a02803;
//          32'd1440: Instruction = 32'h07b02003;
//          32'd1444: Instruction = 32'h07c02783;
//          32'd1448: Instruction = 32'h07d02d03;
//          32'd1452: Instruction = 32'h07e02e03;
//          32'd1456: Instruction = 32'h07f02483;
//          32'd1460: Instruction = 32'h08002903;
//          32'd1464: Instruction = 32'h08102e83;
//          32'd1468: Instruction = 32'h08202683;
//          32'd1472: Instruction = 32'h08302f83;
//          32'd1476: Instruction = 32'h08402103;
//          32'd1480: Instruction = 32'h08502e03;
//          32'd1484: Instruction = 32'h08602983;
//          32'd1488: Instruction = 32'h08702483;
//          32'd1492: Instruction = 32'h08802283;
//          32'd1496: Instruction = 32'h08902d03;
//          32'd1500: Instruction = 32'h08a02183;
//          32'd1504: Instruction = 32'h08b02383;
//          32'd1508: Instruction = 32'h08c02883;
//          32'd1512: Instruction = 32'h08d02783;
//          32'd1516: Instruction = 32'h08e02983;
//          32'd1520: Instruction = 32'h08f02583;
//          32'd1524: Instruction = 32'h09002d83;
//          32'd1528: Instruction = 32'h09102383;
//          32'd1532: Instruction = 32'h09202183;
//          32'd1536: Instruction = 32'h09302f83;
//          32'd1540: Instruction = 32'h09402703;
//          32'd1544: Instruction = 32'h09502003;
//          32'd1548: Instruction = 32'h09602803;
//          32'd1552: Instruction = 32'h09702183;
//          32'd1556: Instruction = 32'h09802e83;
//          32'd1560: Instruction = 32'h09902b03;
//          32'd1564: Instruction = 32'h09a02b03;
//          32'd1568: Instruction = 32'h09b02803;
//          32'd1572: Instruction = 32'h09c02e03;
//          32'd1576: Instruction = 32'h09d02703;
//          32'd1580: Instruction = 32'h09e02f83;
//          32'd1584: Instruction = 32'h09f02483;
//          32'd1588: Instruction = 32'h0a002283;
//          32'd1592: Instruction = 32'h0a102d83;
//          32'd1596: Instruction = 32'h0a202a03;
//          32'd1600: Instruction = 32'h0a302903;
//          32'd1604: Instruction = 32'h0a402303;
//          32'd1608: Instruction = 32'h0a502c83;
//          32'd1612: Instruction = 32'h0a602b03;
//          32'd1616: Instruction = 32'h0a702883;
//          32'd1620: Instruction = 32'h0a802b03;
//          32'd1624: Instruction = 32'h0a902783;
//          32'd1628: Instruction = 32'h0aa02803;
//          32'd1632: Instruction = 32'h0ab02b83;
//          32'd1636: Instruction = 32'h0ac02683;
//          32'd1640: Instruction = 32'h0ad02f83;
//          32'd1644: Instruction = 32'h0ae02e03;
//          32'd1648: Instruction = 32'h0af02003;
//          32'd1652: Instruction = 32'h0b002203;
//          32'd1656: Instruction = 32'h0b102803;
//          32'd1660: Instruction = 32'h0b202d03;
//          32'd1664: Instruction = 32'h0b302c83;
//          32'd1668: Instruction = 32'h0b402883;
//          32'd1672: Instruction = 32'h0b502283;
//          32'd1676: Instruction = 32'h0b602383;
//          32'd1680: Instruction = 32'h0b702283;
//          32'd1684: Instruction = 32'h0b802383;
//          32'd1688: Instruction = 32'h0b902883;
//          32'd1692: Instruction = 32'h0ba02e83;
//          32'd1696: Instruction = 32'h0bb02b03;
//          32'd1700: Instruction = 32'h0bc02583;
//          32'd1704: Instruction = 32'h0bd02a83;
//          32'd1708: Instruction = 32'h0be02f03;
//          32'd1712: Instruction = 32'h0bf02303;
//          32'd1716: Instruction = 32'h0c002403;
//          32'd1720: Instruction = 32'h0c102403;
//          32'd1724: Instruction = 32'h0c202603;
//          32'd1728: Instruction = 32'h0c302303;
//          32'd1732: Instruction = 32'h0c402e83;
//          32'd1736: Instruction = 32'h0c502a03;
//          32'd1740: Instruction = 32'h0c602f83;
//          32'd1744: Instruction = 32'h0c702e83;
//          32'd1748: Instruction = 32'h0c802a83;
//          32'd1752: Instruction = 32'h0c902d83;
//          32'd1756: Instruction = 32'h0ca02703;
//          32'd1760: Instruction = 32'h0cb02803;
//          32'd1764: Instruction = 32'h0cc02583;
//          32'd1768: Instruction = 32'h0cd02303;
//          32'd1772: Instruction = 32'h0ce02a03;
//          32'd1776: Instruction = 32'h0cf02c03;
//          32'd1780: Instruction = 32'h0d002903;
//          32'd1784: Instruction = 32'h0d102803;
//          32'd1788: Instruction = 32'h0d202683;
//          32'd1792: Instruction = 32'h0d302303;
//          32'd1796: Instruction = 32'h0d402a83;
//          32'd1800: Instruction = 32'h0d502303;
//          32'd1804: Instruction = 32'h0d602c03;
//          32'd1808: Instruction = 32'h0d702503;
//          32'd1812: Instruction = 32'h0d802283;
//          32'd1816: Instruction = 32'h0d902303;
//          32'd1820: Instruction = 32'h0da02e83;
//          32'd1824: Instruction = 32'h0db02b03;
//          32'd1828: Instruction = 32'h0dc02783;
//          32'd1832: Instruction = 32'h0dd02183;
//          32'd1836: Instruction = 32'h0de02903;
//          32'd1840: Instruction = 32'h0df02b83;
//          32'd1844: Instruction = 32'h0e002583;
//          32'd1848: Instruction = 32'h0e102003;
//          32'd1852: Instruction = 32'h0e202903;
//          32'd1856: Instruction = 32'h0e302403;
//          32'd1860: Instruction = 32'h0e402383;
//          32'd1864: Instruction = 32'h0e502403;
//          32'd1868: Instruction = 32'h0e602a83;
//          32'd1872: Instruction = 32'h0e702d03;
//          32'd1876: Instruction = 32'h0e802003;
//          32'd1880: Instruction = 32'h0e902f83;
//          32'd1884: Instruction = 32'h0ea02003;
//          32'd1888: Instruction = 32'h0eb02f83;
//          32'd1892: Instruction = 32'h0ec02303;
//          32'd1896: Instruction = 32'h0ed02c83;
//          32'd1900: Instruction = 32'h0ee02f03;
//          32'd1904: Instruction = 32'h0ef02d03;
//          32'd1908: Instruction = 32'h0f002003;
//          32'd1912: Instruction = 32'h0f102d83;
//          32'd1916: Instruction = 32'h0f202a03;
//          32'd1920: Instruction = 32'h0f302a03;
//          32'd1924: Instruction = 32'h0f402e83;
//          32'd1928: Instruction = 32'h0f502d03;
//          32'd1932: Instruction = 32'h0f602483;
//          32'd1936: Instruction = 32'h0f702503;
//          32'd1940: Instruction = 32'h0f802203;
//          32'd1944: Instruction = 32'h0f902503;
//          32'd1948: Instruction = 32'h0fa02703;
//          32'd1952: Instruction = 32'h0fb02083;
//          32'd1956: Instruction = 32'h0fc02a03;
//          32'd1960: Instruction = 32'h0fd02d83;
//          32'd1964: Instruction = 32'h0fe02f83;
//	  32'd1968:Instruction=32'h00100093;
//	  32'd1972:Instruction=32'h00200113;//addi x8,x0,9
//	  32'd1976:Instruction=32'h00300193;//addi x7,x0,2
//	  32'd1980:	Instruction=32'h00400213;//addi x9,x0,c
//	  32'd1984:	Instruction=32'h001020a3;	
//	  32'd1988:	Instruction=32'h00202123;
//	  32'd1992:	Instruction=32'h003021a3;	
//	 32'd1996:	Instruction=32'h00402223;
//	 32'd2000:	Instruction=32'h00102283;
//	 32'd2004:	Instruction=32'h00202303;
//	 32'd2008:	Instruction=32'h00302383;
//	 32'd2012:	Instruction=32'h00402403;
//	 32'd2016:	Instruction=32'h00A02683;
//	 32'd2020:	Instruction=32'h1906013;
//	 32'd2024:	Instruction=32'h0400E013;
//	 32'd2028:	Instruction=32'h3D016013;
//	 32'd2032:	Instruction=32'h4A3EFA13;
//	 32'd2036:	Instruction=32'h428F7A13;
	  
//         32'd2040:	Instruction=32'h063FFA13;
//	 32'd2044:	Instruction=32'h21294F93;
//	 32'd2048:	Instruction=32'hC469CF93;
//	 32'd2052:	Instruction=32'h00402403;
//	 32'd2056:	Instruction=32'h00A02683;
//	 32'd2060:	Instruction=32'hC7CA4F93;
//	 32'd2064:	Instruction=32'h0D040493;
//	 32'd2068:	Instruction=32'h000483B3;
//	 32'd2072:	Instruction=32'h12E3E313;
//	 32'd2076:	Instruction=32'h00730533;
	 
//	 32'd2080:	Instruction=32'h0D040493;
//	 32'd2084:	Instruction=32'h009483B3;
//	 32'd2088:	Instruction=32'h12E3E393;
//	 32'd2092:	Instruction=32'h00738533;
//	 32'd2096:	Instruction=32'h7D000413;
//	 32'd3000:	Instruction=32'h00100493;
	 
//	32'd3004:	Instruction=32'h00940C63;
//	 32'd3008:	Instruction=32'h00944663;
//	 32'd3012:	Instruction=32'h40940433;
//	 32'd3016:	Instruction=32'hFE000AE3;

//         32'd3020:	Instruction=32'h408484B3;
//	 32'd3024:	Instruction=32'hFE0006E3;
//	 32'd3028:	Instruction=32'h00000063;

	 
 
	 

//         default: Instruction = 32'h00000013;


//		32'd0:	Instruction=32'h00100093;
//		32'd4:	Instruction=32'h00200113;//addi x8,x0,9
//		32'd8:	Instruction=32'h00300193;//addi x7,x0,2
//		32'd12:	Instruction=32'h00400213;//addi x9,x0,c
//		32'd16:	Instruction=32'h001020a3;	
//		32'd20:	Instruction=32'h00202123;
//		32'd24:	Instruction=32'h003021a3;	
//		32'd28:	Instruction=32'h00402223;
//		32'd32:	Instruction=32'h00102283;
//		32'd36:	Instruction=32'h00202303;
//		32'd40:	Instruction=32'h00302383;
//		32'd44:	Instruction=32'h00402403;
//		32'd48:	Instruction=32'h00A02683;
		//Interrupt Handler Base Address
		
//		32'd52:	Instruction=32'h00800493;//addi x9,x0,8
//		32'd56:	Instruction=32'h30200073;//mret for interrupt 1
		

	//endcase

//reg [31:0] instr_mem [44:0];
   
//    initial
//    $readmemh("Instruction_mem.mem", instr_mem);
    
//    always@(pc) begin
//        Instruction <= instr_mem[pc>>2];
//    end
//endmodule


module Instruction_Memory (input [31:0] pc,output  reg[31:0] Instruction);
    reg [31:0] instr_mem [44:0];
    
    initial
    $readmemh("Instruction_mem.mem", instr_mem);
    
    always@(pc)
     begin
        Instruction <= instr_mem[pc>>2];
    end
endmodule
