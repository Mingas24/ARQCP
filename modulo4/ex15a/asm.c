unsigned int greater_date(unsigned int date1, unsigned int date2){
		
	unsigned int mask_year = 0x00ffff00;
	unsigned int mask_month = 0xff000000;
	unsigned int mask_day = 0x000000ff;

	//TESTS YEAR
	int year1 = date1 & mask_year;
	int year2 = date2 & mask_year;
	
	if(year1 > year2){
		return date1;
	}
	if(year1 < year2){
		return date2;
	}
	
	//TESTS MONTH
	int month1 = date1 & mask_month;
	int month2 = date2 & mask_month;
	
	if(month1 > month2){
		return date1;
	}
	if(month1 < month2){
		return date2;
	}
	
	//TESTS DAY
	int day1 = date1 & mask_day;
	int day2 = date2 & mask_day;
	
	if(day1 > day2){
		return date1;
	}
	
	return date2; // bigger or equal
	
	
}
