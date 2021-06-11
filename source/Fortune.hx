package;

import Sys.*;

class Fortune {
	public static function clear() {
		switch (systemName()) {
			case "Linux", "BSD", "Mac":
				Sys.command('clear');
			case "Windows":
				Sys.command('cls');
		}
	}

	public static function loading() {
		// I was going to make a while loop, but it didn't optimize it at all lol
		Sys.print("Loading");
		Sys.sleep(1);
		Sys.print(".");
		Sys.sleep(1);
		Sys.print(".");
		Sys.sleep(1);
		Sys.print(".");
		Sys.print(" Done!");
		Sys.sleep(1);
		clear();
	}

	public static function main() {
		// Added the vars here so that it will work lol
		Sys.println("Loading...");
		var introList:Array<String> = ["Be aware", "Watch out", "Be on the lookout", "Don't worry", "Oh no"];
		var nounList:Array<String> = ["face", "car", "meal", "finger", "summer"];
		var adjectiveList:Array<String> = ["smelly", "huge", "perfect", "weird", "sticky"];
		var timeList:Array<String> = ["today", "in the future", "eventually", "immediately", "after you go to the bathroom"];
		var validLetters:Array<String> = ["A", "B", "C", "D", "E"];
		var validNumbers = ["1", "2", "3", "4", "5"];
		var letter = "lol";
		var number = "0";
		var i = "0";
		// vars are loaded, it's showtime, this checks for if you chose the right letter or not
		clear();
		Sys.println("Welcome to Jude's FORTUNE COOKIE! (Jude Uyeno and Dad 2015-2021)");
		var coffee:String = sys.io.File.getContent('coffee.txt');
		Sys.println(coffee);
		Sys.sleep(1);
		while (!validLetters.contains(letter)) {
			Sys.println("Choose a letter!! (A, B, C, D, E)");
			letter = Sys.stdin().readLine().toUpperCase();
			if (!validLetters.contains(letter)) {
				Sys.println("Did you choose " + letter + "? Do you not understand simple instructions?");
			}
		}
		// Waaaaaay simpler than my original idea, which was a count-up system
		var demo = validLetters.indexOf(letter);
		clear();
		// I basically copied over the last code, lol
		while (!validNumbers.contains(number)) {
			Sys.println("Now choose a number from 1-5!!");
			number = Sys.stdin().readLine();
			if (!validNumbers.contains(number)) {
				Sys.println("Did you choose " + number + "? Do you not understand simple instructions?");
			}
		}
		var demo2 = validNumbers.indexOf(number);
		//This, once again was fun to set up,
		clear();
		loading();
		Sys.println(introList[demo] + '- your ' + nounList[demo] + ' will be kind of ' + adjectiveList[demo2] + ' ' + timeList[demo2] + '!');
	}
}
