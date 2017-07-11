defmodule Hello.HelloController do
    use Hello.Web, :controller

   
    
    
    def world(conn, %{"name" => name}) do
        {{year, month, day},{_,_,_}} = :calendar.local_time

        {title, text, author, link} = {"Does he look like a Bitch?!", "The path of the righteous man is beset on all sides by the inequities of the selfish and the tyranny of evil men. 
        Blessed is he, who in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. 
        And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy my brothers. 
        And you will know my name is the Lord when I lay my vengeance upon thee.", "Jude Nicholl", "https://media.giphy.com/media/M35gjrM9EWdnG/giphy.gif"}

        d = {year,month,day} 

        render conn, "world.html", date: d, year1: year, month1: month, day1: day, name: name, title1: title, text1: text, author1: author, link1: link
        

        
        
    end
      
end