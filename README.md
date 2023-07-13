```csharp
using Gender.Basic;
using Countries;
using Countries.Europe;

namespace github_readme
{
    public class AboutMe : AboutMe 
    {
        string nickname = "Písek";
        string username = "pisekpiskovec";
        string discord = @"Písek Pískovec#4237";
        string youtube = "https://www.youtube.com/PísekPískovec";
        string[] favourite_lang = {"C#", "JavaScript", "VB.net"};
        string[] likes = {"coding", "playing", "drawing", "recording";
        int age = 16;
        
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
[![Top Langs](https://github-readme-stats.vercel.app/api/top-langs?username=pisekpiskovec&layout=compact&langs_count=12&theme=cobalt)](https://github.com/anuraghazra/github-readme-stats)
