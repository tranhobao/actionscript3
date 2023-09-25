package
{
	import flash.display.Sprite;
	import flash.trace.Trace;
	import flash.text.TextField;
	import flash.events.*;
	import flash.text.TextFormat;
	import flash.system.System;


	public class Main extends Sprite
	{
		public function Main()
		{

			var a:int = 5;
			var b:int = 4;

			var ary:Array = new Array(8,7,2,3,5,6);
			var ary1:Array = new Array(16, 28, -16, -4, -13, 11, 28, 8, 10, 21, 4, 30, -7, -14);

			var myString:String = "Viet Nam";
			var myString1:String = "Tran Phi An Binh";
			var myString2:String = "n";


			compare(a,b);
			chanLe(b);
			timViTriPhanTu(ary);
			kiemTraTonTai(ary);
			timMaxMin(ary1);
			chuyenChuHoa(myString);
			daoChuoi(myString);
			demSoLanXuatHien(myString1, myString2);
			pftLastName(myString1);			

		}

		public function compare(a:int, b:int):void
		{
			if (a > b)
			{
				trace(a);
			}
			else
			{
				trace(b)
			}
		}

		public function chanLe(b:int):void
		{
			if(b%2 == 0)
			{
				trace("gia tri la so chan");
			}
			else {
				trace("Gia tri la so le");
			}
		}
		public function timViTriPhanTu(ary:Array):void
		{
			var i:int=0;
			for ( i = 0; i < ary.length; i++)
			{
				if (ary[i] == 3)
				{
					trace("Vi tri phan tu thu 3 trong mang la: "+i);
				}
			}
		}

		public function kiemTraTonTai(ary:Array):void
		{
			var x:int = 9;
			var dem:int= 0;
			var i:int = 0;

			for (i = 0; i < ary.length; i++)
			{
				if (ary[i] == x)
				dem++;
			}
			if (dem == 0)
			{
				trace("Phan tu " + x + " khong xuat hien trong mang");
			}
			else 
			{
				trace("Phan tu xuat hien trong mang");
			}

		}

		public function timMaxMin(ary1:Array):void
		{
			var i:int = 0;
			var max:int = 0;
			var min:int = 0;
			for (i = 0; i < ary1.length; i++)
			{
				if ( max < ary1[i] )
				{
					max = ary1[i];
				}

				if ( min > ary1[i] )
				{
					min = ary1[i];
				}

			}
			trace("Gia tri max la = " + max);
			trace("Gia tri min la = " + min);
		}

		public function chuyenChuHoa(myString:String):void
		{
			trace(myString.toLocaleUpperCase());
		}

		public function daoChuoi(myString:String):void
		{
			trace(myString.split("").reverse().join(""));
		}

		public function demSoLanXuatHien(myString1:String, myString2:String):void
		{
			var dem:int = 0;
			for (var i:int = 0; i <= myString1.length; i++)
			{
				if (myString1.charAt(i) == "n")
				{
					dem++;
				}
			}
			if (dem > 0)
			{
				trace("So lan xuat hien ky tu n cua chuoi s2 la: " + dem);
			}
			else 
			{
				trace("Khong co ky tu nao!!!")
			}
		}

		public function pftLastName(myString1:String):void
		{
			trace(myString1.split(' ').slice(0, 1).join(' '));
		}


	}
}