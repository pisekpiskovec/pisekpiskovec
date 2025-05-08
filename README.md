```csharp
using Gender.Basic;
using Countries;
using Countries.Europe;

namespace github_readme
{
    public class AboutMe : AboutMe 
    {
        string nickname = "Písek Pískovec";
        string username = "pisekpiskovec";
        string discord = "pisekpiskovec";
        string youtube = "https://www.youtube.com/PísekPískovec";
        string[] favourite_lang = {"C#", "JavaScript", "C++/Qt"};
        string[] likes = {"coding", "playing", "drawing", "recording"};
        int age = 18;
        
        tAddY = new System.Timers.Timer();
        tAddY.Interval = 31556951999;        
        tAddY.Elapsed += tAddOneYear_Tick;
        tAddY.AutoReset = true;
        tAddY.Enabled = true;
         
        private void tAddOneYear_Tick(object sender, ElapsedEventArgs e)
        {
            age++;
        }
         
        var gender = Gender.Get(Male);
        var country = new Countries.GetCountry(Countries.Europe.CzechRepublic);
    
        string[] job = {null};
    }
}
```
[![Top Langs](https://github-readme-stats.vercel.app/api/top-langs?username=pisekpiskovec&layout=compact&langs_count=12&bg_color=0d1117&border_color=0d1117ff)](https://github.com/anuraghazra/github-readme-stats)
[![GitHub stats](https://github-readme-stats.vercel.app/api?username=pisekpiskovec&layout=compact&langs_count=12&bg_color=0d1117&border_color=0d1117ff)](https://github.com/anuraghazra/github-readme-stats)
