//)0
PImage img;

void setup()
{
  size(240, 240);
  printTxt(253);
}


void draw()
{ 
  background(0);
  image(img, 0, 0); 
}

//Reads the DNA sequence from the file 
//Assumes file has 60 nucleotide bases in one line of the file 
//Starts at the mentioned position of file

void printTxt(int pos)
{
    String[] lines = loadStrings("sars_cov2_codons.txt");
    int char_read = 0, counts = 0, flag = 0, start = 0, pixel_count = 0 ; 
    String codon = "";
    
    String nucleotide = "tcag";
    int[] vals = new int[4]; 
    int r,g,b;
    /**
     vals[0] = int(random(255)); 
     vals[1] = int(random(255)); 
     vals[2] = int(random(255)); 
     vals[3] = int(random(255)); 
     **/
     
     vals[0] = 50; 
     vals[1] = 120; 
     vals[2] = 240; 
     vals[3] = 30;   
      
    println("t:" +vals[0] );  
    println("c:" +vals[1] );  
    println("a:" +vals[2] );  
    println("g:" +vals[3] );  
      
      
    img = createImage(90,240, RGB);
    img.loadPixels();
    

    
     
    for (int i = 0 ; i < lines.length; i++) {
    
    //Calculate the length of length & add to character read
      char_read += lines[i].length();
      start = 0;
    
    //Check whether required position is yet to be crossed
    
     if(flag == 0)
         if( char_read >= pos) 
           { start = pos - char_read + lines[i].length() - 1 ;
             flag = 1;
           }
     
     if(flag == 1)
     {  //Start reading characters one by one from position            
        
        for (int j = start ; j < lines[i].length(); j++)
        {    codon = codon + lines[i].charAt(j);
             counts++;
             if (counts >= 3)
             {   counts= 0;
                 //print(codon + "---");
                 
                r = vals[nucleotide.indexOf(codon.charAt(0))];  
                g = vals[nucleotide.indexOf(codon.charAt(1))];  
                b = vals[nucleotide.indexOf(codon.charAt(2))];  
                 
                //Fill the Pixel with appropriate rgb values
                img.pixels[pixel_count] = color(r,g,b); 
                
                pixel_count++;
                pixel_count++;
                pixel_count++; 
                
                                                     
                //Stop if codon is "taa", "tag" or "tga"
                if (codon.equals("tga"))// || codon.equals("tag") || codon.equals("tga"))
                    flag = 2;
                codon = "";
           }
        }    
     // println("Code Length:" + char_read);
     }

   }  
   //println("there are " + lines.length + " lines");
   for (; pixel_count < img.pixels.length; pixel_count++) 
     img.pixels[pixel_count] = color(0,0,0);
   
   img.updatePixels(); 
 }
   
