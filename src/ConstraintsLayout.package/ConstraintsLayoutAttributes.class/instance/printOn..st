printing
printOn: aStream

	aStream 
		nextPut: ${;
		space;
		nextPutAll: 'top:';
		space;
		print: top;
		space;
		nextPutAll: 'left:';
		space;
		print: left;
		space;
		nextPutAll: 'height:';
		space;
		print: height;
		space;
		nextPutAll: 'width:';
		space;
		print: width;
		space;
		nextPut: $}.