def ask_nbr
    puts "Combien d'etage (Impair et entre 1-25) ?"
    print ">"
    nbr = gets.chomp.to_i
    if ((nbr >= 1) && (nbr <= 25) && (nbr % 2 != 0))
        return nbr
    else
        return false
    end

    
end


def half_pyramid(nbr)
    
    nbr1 = nbr
        for nbr in 0..nbr    
            print "\s"*nbr1, "#"*nbr, "\n"
            nbr1 -=1
        end    

end

def full_pyramid(nbr)
    i = 1
    while i <= nbr
      puts " "*(nbr-i)+"#"*(2*i-1)
      i += 1
    end
  end
  
  def full_pyramidiv(nbr)
    i = nbr - 1
    while i > 0
      puts " "*(nbr-i)+"#"*(2*i-1)+" "*(nbr-i)
      i -= 1
    end
  end
  
  
  def wtf_pyramid(nbr)
    m = (nbr+1)/2
    puts ""
    full_pyramid(nbr)
    full_pyramidiv(nbr)
    puts ""
  end


  nbr = ask_nbr

  if nbr == false
    return false
   else
        half_pyramid(nbr)
        full_pyramid(nbr)
    end

  wtf_pyramid(nbr)


