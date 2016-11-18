##M.A. Hagadorn

#Will this is just to give you some additional information for why I did somethings.

#During our talk this morning you said that they only thing that should be in our packages are functions
#That is, no vectors of any kind.

#So what I did was I exported both the make.terrain function and I made an encompassing terrain.plantecosystem.wrapper function.
#This was the only way I saw to keep from having to save anything as a vector

    #make.terrrain--generates JUST a terrain matrix.
      #I did this so if the user wanted just to generate a terrain and not run the plant ecosystem simulation they could do so

    #terrain.plantecosystem.wrapper--does everything
      #This function makes a terrain and simulates the plant ecosystem on that terrain
      #I designed this to be a one shot deal, input all the info and run the simulation
      #YOU CAN NOT GENERATE A TERRAIN AND THEN PUT THAT INTO THE FUNCTION
      #I didn't want the function to do that because I wanted it to be as simplistic as possible
      #I did, however, print the terrain matrix so that they can see that data
      #Therefore, this wrapper function generates a terrain, the info list, and it runs the ecosystem simulation on a plant array.
