// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
//For creating the SMTP Server

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  final myController = TextEditingController();

  englishText() {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
            child: Text(
              "A Mahā Buddhaputhra \n(A great son of The Buddha)",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Text(
          "The Most Venerable Maha Arahant Wajirabuddhi thero, who had been practicing the pristine noble Dhamma under some of the most eminent forest-dwelling Buddhist theroes (elders) since the 1990s, revealed the true teachings of Gautama The Buddha, to the world in the year 2006. This was also during a time when Gautama The Sammā Sambuddha's pristine teachings were overlooked and preached by mundane individuals through scriptures in a manner where both mundane monks and lay followers were ultimately blinded by rituals, faith-based dogma and performed such practices and eventually prayed for the arrival of the Arahants, intentionally or unintentionally mocking the noble teachings of The Buddha. Unfortunately, the 'Chathurāriya Sattya': translated as the 'Four Noble Truths' (Known as the doctrine of The Buddhas) had not been truly understood or even heard and was criticized by many (both monks and laymen) who did not know the pure Dhamma and the authentic teachings of the Buddha in this present day and age. It was during such a time when this young enlightened being came forth to speak to the world and to reach out to those who are in search of the noble teachings of Gautama The Buddha.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "The Most Venerable Maha Arahant Wajirabuddhi thero's discourses were seen as highly controversial in a time when the 'Shraddhā': (As clearly explained by the Maha Arahant Wajirabuddhi Thero the term 'Shraddhā' is NOT Faith, Fidelity or Confidence. It can ONLY be closely translated to English as having been greatly impressed through one's own realization after seeing or hearing the qualities of 'The Buddha', 'The Dhamma', or 'The Sangha') was replaced by stone structures, pagodas, statues, Bo-trees, rituals, and also through scriptural studies in the light of searching the Nibbāna by both mundane (non-enlightened) monks and lay followers. (*Please note: The term mentioned earlier as 'Sangha' is the name given to the gathering or the community of those who have gone forth and are enlightened in either of the four stages of enlightenment; sotāpanna, sakadhagāmi, Anāgāmi and Arahant who are called 'Āriyas').",
          textAlign: TextAlign.justify,
        ),
        Text(
          "He (The Maha Arahant) was the first preacher in this day and age to fully disclose and bring back to light the authentic teachings and the path of practice for the attainment of Nibbāna, at a time when Nirvāna (Nibbāna) was considered impossible. In the year 2006, whilst still being a forest dwelling monk, the Maha Arahant came forward to address the wise seekers, who were in search of the pristine teachings of Gautama the Buddha. The four pristine dhamma discourses he initially made were broadcasted on the Kandurata FM Radio station of Sri Lanka Broadcasting Corporation (SLBC) with his permission, and it at the time caused a stir within the traditional Buddhist community since it appeared as a threat to the prevailing ritual based, corrupt, politicized and institutionalized religion called ‘Buddhism’ which was reluctant to adhere to the true noble teachings of Gautama The Buddha here in Sri Lanka. Since then nearly after a decade, in the year 2016 at the Mahaweli Centre in Colombo Sri Lanka, The Most Venerable Maha Arahant Mahanuwara Wajirabuddhi Thero in response to the question “Does the government need a religion?” addressed the nation with a convincing and a mind awakening discussion. Subsequently, with the Maha Arahant's appearance in a live program called “Pathikada” broadcasted by Sirasa TV Sri Lanka on 09th February 2016 brought about a positive change within the Sri Lankan society.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "Since then people who were against the Sage's pristine dhamma sermons (both Buddhist monks and laymen who promote the corrupt, politically driven, institutionalized Buddhism which currently prevails in Sri Lanka to fulfill their own agendas.) were reluctant to these teachings and the noble path of practice since it challenged their corrupt agendas and existence. The so-called mobs ended up completely destroying his fully-fledged meditation center, which was situated in the dense forests in Kothmalé, Sri Lanka. And later they too ended up attacking the Sage's current abode with petrol bombs, with the sole intention of silencing him forever. They even went to the extremes of forcing villagers and his lay followers to stop offering him his one and only meal for the day which the Sage gets from his 'Pindapātha'- (alms begging). Ever since his ordination as an Arahant, the great Sage until now has been living having just one meal a day. They also framed him on various ridiculous court cases just so they could bully him in to stop preaching the true pristine dhamma. But they all realized that nothing could harm him or stop his great compassionate mission in this world in any way. Little did they know, trying to attack or harm such a noble enlightened being is like as if anyone trying to hit the wind.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "Today, Buddhist scholars around the world including the intelligent society has acknowledged his teachings to be accurate, rational, and in accordance with the practical perspectives of the great Gautama The Buddha's philosophy. When the Noble Sage first preached the pure Dhamma in the year of 2006, which was titled as 'The path to Nibbana as proclaimed by Gautama The Buddha', he rejected all dogma, ritualistic practices, myths, and misconceptions that had unfortunately taken root and risen over twenty-five centuries in all Buddhist societies and cultures around the world in order to unearth the pristine teachings.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "The Most Venerable Wajirabuddhi Thero is highly venerated and respected as a Maha Arahant. He is currently residing in the hilly countryside of the island nation of Sri Lanka. He does not claim to be associated with any form of sects or monastic fraternities, which are more commonly referred to as 'nikāyas'. The great Sage hails from a long line of Arahants who lived both in the nations of Burma and Sri Lanka. The term 'Sthaviravadha' or 'Thēravāda' is the very meaning of this, where the seeker or the disciple practices the noble path under the teacher or the enlightened āchariya who himself has gone forth in the noble path of practice and is an enlightened being who can teach and show the path to the seeker. Such beings fall under the term and should be addressed as 'Sangha'. The Most Venerable Maha Arahant Wajirabuddhi Thero has declared to the world of his supreme achievement of Nibbāna thereby reaching the state of 'Chēthōvimuktha' which is also known as 'Ubhathōbhāgavimuktha'. He has proven this fact to the world with the 'Dhamma Prathihariya'; meaning where he has touched many hearts and minds of those who are seeking the noble path of practice through speaking the pristine dhamma.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "The great sage will continue to speak the pristine noble dhamma and the path of practice, thereby unearthing the true teachings and preserving the noble doctrine (Buddha Anushāsanāwa) of Gautama The Buddha.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "The Noble Sage's teachings always emphasize the importance of Dhamma seekers in finding and seeking guidance from noble, enlightened teachers who have secluded themselves from the societies and have gone forth in the noble 'Eightfold Path' of practice and have attained enlightenment (Nibbāna) in order for them to receive meditation and develop their own path of practice. He also stresses the importance of detaching one's own attachments to the lay lifestyles, if the seeker intends to progress on the dhamma path and develop the 'satharasathipattāna' meditation practice (this is the only meditation technic or path that will help achieve the Nibbāna as stated clearly by Gautama The Buddha) and to do it in that exact manner in which Gautama The Buddha had laid down two and half millennia ago.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "Born in the year 1957 to a very affluent family in the hill country city of Kandy, Sri Lanka, the Sage's lay life was filled with great worldly achievements as a young boy and also as an adult. Having been educated at one of the foremost schools in the country he was an extremely brilliant student, both in sports and studies. After graduating from one of the most prestigious universities in the capital city of Colombo, graced with an intellectual character and personality, he soon saw himself working with some of the leading corporate firms in the nation at the time. Having been recognized as an oratorical champion from a very young age in pretty much all the institutions where he hailed from, his lay life saw him contributing to many social services and social development programs in Sri Lanka during the mid-'80s. He was also blessed with all the worldly luxuries one could ever dream of achieving at a very young age, with great family life and children. It was during this very peak of his young lay life whilst enjoying all the worldly luxuries that his inquisitive mind, clear conscious, persevering character and mentality that lead him in search of answers to some of the most important questions that bothered him at the time, 'why did the young prince Siddhārtha leave all these worldly luxuries behind?', 'what is it that he lacked in his lay life as a young crown prince?', 'what is it that he preached to the world after reaching supreme Buddhahood?', 'is it achievable today?', 'am I able to find those who have gone forth in this noble path of practice today?'. In order to find the answers to these questions, he at a very young age of 24, started his own research that ended up spanning nearly two decades. This interesting journey of finding the true noble teaching of Gautama The Buddha, eventually made him achieve the very fruits of the pristine dhamma as a noble being.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "The Maha Arahant centered his talks and sermons mainly on his own experiences on progressing the path practically which started way back in the year 1990 as a layman and lasted nearly a decade. He donned robes in the year 2001, at the age of 44 after reaching the pinnacle of supreme Arahanthood, thereby completing Gautama The Buddha's doctrine through his own determination and effort, whilst been guided by noble teachers all the way. His preceptor during the final fruition achievement stages was The Most Venerable Agga Mahā Kammattānāchāriya Arahant Kirimatiyāné Ariyagnāna Thero (whom Maha Arahant Wajirabuddhi Thero ordained under) who was the chief meditation master in one of the most prominent forest meditation monasteries in the dense forests of Sri Lanka. His journey, since he was a layman seeking the pristine dhamma path up to now has not been a bed of roses, but a path with many difficult hurdles and hardships which he overcame with commitment and effort to achieve the supreme Nibbāna and seize his samsāric journey. The Maha Arahant is, without a doubt an example to anyone regardless of race, ethnicity, nationality, class, caste, religion, belief, sex, gender, language, or any social status (regardless whether he or she is a monk or a layman) who wishes to go forth in the noble dhamma path of the Buddha.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "The Maha Arahant Mahanuwara Wajirabuddhi Thero's existence on the face of this earth is by far the greatest blessing on those who are searching the noble path of practice for the attainment of Nibbāna and to all mankind since the time of the Great Gautama The Buddha.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "'May the great noble Sage live a long and healthy life for the betterment of all living beings and preach the noble dhamma! '",
          textAlign: TextAlign.justify,
        )
      ],
    );
  }

  sinhala() {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
            child: Text(
              "අද ජීවමානව වැඩසිටින අතිපූජනීයවු ඒ මහා බුද්ධ පුත්‍රයාණෝ...",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
          ),
        ),
        Text(
          "අතිපූජනීය මහනුවර වජිරබුද්ධි මහ රහතන්වහන්සේ නිර්මල ආර්ය අෂ්ඨාංගික මාර්ගය ප්‍රගුණ කිරිම සදහා වනවාසී විශිෂ්ට ගුරුවරු ඇසුරු කරමින් ගෞතම බුදුන් වහන්සේගේ නිර්මල දහම ගවේශනය ආරම්භ කර ඇත්තේ 1990 වර්ශයේය. කුඩාකල සිටම නිර්මාණශීලි ගවේශනාත්මක චරිත ලක්ෂණ වලින් හෙබි උන්වහන්සේ තුළ, සිද්ධාර්ථ චරිතය පිළිබඳව ඇතිවූ කුතුහලය, ගෞතම බුදුන්වහන්සේගේ ධර්මය ගවේශනය කිරීමේ ආරම්භය විය. තරුණවියේදීම රාජකීය සැපසම්පත් ඇතහැර, බුදුන් වහන්සේ සොයාගත් සැනසුම කුමක්ද? නිර්වානය යනු කුමක්ද? එය වර්තමානයේ කෙනෙකුට ලබාගත හැකිද? යන කාරණා ඔස්සේ සිය ගවේශනය ආරම්භ කළ වජිරබුද්ධි තෙරුණුවෝ, ප්‍රථමයෙන් බාහිර සමජයේ පවතින ප්‍රසිද්ධ බුදු දහම සහ පොත්පත් පරිශීලනය කලේය. නමුත්, සමාජගත පන්සල් සම්ප්‍රදාය තුළ බුදුන් වහන්සේ පැවසූ නිර්මල දහම නොමැති බවත්, බුද්ධ දේශනාව තුල නිරන්තරයෙන් සදහන් ආරණ්‍යගතෝවා, රුක්ඛමූලගතෝවා, ශුණ්‍යාඝාරගතෝවා යන කරුණ අනුව කැලයක, වෘක්ෂමූලයක හෝ හිස්තැනක මේ ආර්‍ය මාර්ගය වඩන අය හමුවිය හැකි බවත්, උන්වහන්සේ සිය ගවේශනය තුළින් අවබෝධ කරගත්තේය. ඒ අනුව සිය ගවේශනය වඩාත් ප්‍රායෝගික මාර්ගයක් ඔස්සේ රැගෙන ගිය උන්වහන්සේ ආරණ්‍යගතව විවිද ප්‍රවීණ ගුරුවරු ඇසුරේ ආර්‍ය අෂ්ඨාංගික මාර්ගය ප්‍රගුණ කළේය. දශකයකට වැඩි කාලයක් තුළ ලැබූ ප්‍රායෝගික ගවේශනයේ ප්‍රතිඵලයක් ලෙස 2001 වර්ශයේ ආර්‍ය තත්ත්වයට පත්වීමට උන්වහන්සේට හැකි විය. වයස අවුරුදු 44 වනවිට අරහත්ඵලයට පත්වූ උන්වහන්සේ, බුද්ධ භාෂිතය තමන් විසින්ම තම උත්සාහයෙන් සාක්ශාත් කරගත්තේ, එම මාර්ගය තුළ හමුවූ ආර්‍යයන්වහන්සේලාගේ නිවැරදි මඟපෙන්වීම යටතේය. උන්වහන්සේගේ අවසාන ආචාර්යවරයා වන්නේ අතිපූජනීය අග්ගමහා කම්මට්ඨානාචාර්‍ය කිරිමැටියානේ අරියඥාන මහා රහතන් වහන්සේයි. (අරහත් වජිරබුද්ධි තෙරුණුවන් පැවිදි වූයේද උන්වහන්සේ යටතේය.) උන්වහන්සේ ලංකාවේ ප්‍රමුඛ පෙලේ ආරණ්‍යක භාවනා කර්මස්තාන ආචාර්යවරයා ලෙස වැඩවසමින් සිට 2005 වසරේ පිරිනිවන්පා වදාලේය.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "අතිපූජනීය වජිරබුද්ධි මහ රහතන්වහන්සේ තම මාර්ගය සම්පූර්ණ කළ මෙම කාලය වන විට, සමාජය තුළ ලෞකික ලාභ සත්කාර අපේක්ෂාවෙන් ඇතැම් භික්ෂූන් හා ගිහියන් විසින් නිර්මල බුදු දහම විකුර්ති කරමින් තම තමාට රිසි සේ මේ උතුම් ඉගැන්වීම දැනුවත්ව හෝ නොදැනුවත්ව අවභාවිතා කරමින් පසුවූ යුගයක් විය. අවාසනාවන්ත ලෙස චතුරාර්‍ය සත්‍ය හෙවත් බුදුන් වහන්සේගේ මූලික ඉගැන්වීම පිලිබදව භික්ෂූන් අතර හෝ ගිහි සමාජය අතර නිවැරැදි අවබෝධයක් නොතිබුණු අතර ඔවුන් විසින් එය දිගින් දිගටම විකුර්ති කරමින් පසුවිය. බුදු දහමේ ප්‍රායෝගික හරය වැදුම් පිදුම් වත් පිළිවෙත් වලින් පමණක් වැසී යමින් පැවතුනි. රහත් බව, නිර්වානය යනු මේ ආත්මයේ ලබාගත නොහැක්කක් යැයි සිතමින් මෛත්‍රී බුද්ධ ශාසනයක් තුළ නිවන් ප්‍රර්ථනා කරමින් සිටි යුගයක මෙම තරුණ බුද්ධ පුත්‍රයාණන්වහන්සේ විසින්, රහත් බව යනු ප්‍රයෝගිකව ලබාගත හැකි දෙයක් බවත්, අදටත් රහතන් වහන්සේලා වැඩසිටින බවත් පවසමින් 2006 වසරේදි ශ්‍රි ලංකා ගුවන් විදුලි සංස්ථවේ කඳුරට සේවය ඔස්සේ පවත්වන ලද දේශනා මාළාව මෙරට බෞද්ධ සමාජය උඩු යටිකුරු කරන්නක් විය.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "උන්වහන්සේ විසින්, 'සදහම් මග', 'ලෝකය', 'ශ්‍රද්ධාව සහ 'බුද්ධ ශාසනය' යන මාතෘකා සතර ඔස්සේ බුදු දහම තුළ සමස්ථ හරයම කැටිකරමින් පැවැත්වූ දේශනා මාලාව එවකට සමාජය තුළ පැවති බුදු දහම පිළිබද බොහෝමයක් මිත්‍යා මත ඛණ්ඩනය කිරීමට සමත් විය. බුදු දහම ගවේශනය කළ බොහෝමයක් දෙස් විදෙස් බෞද්ධයන් තුළ නව ජීවයක් ඇති කළ මෙම දේශනා මාලව සාම්ප්‍රදායික බුදු දහම, අර්ථික ජීවන මාර්ගයක් කරගත් ඇතැම් චීවරදාරින්ට මරු පහරක් විය.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "වැදුම්පිදුම්, වත්පිළිවෙත්, පුද පූජා පසු පස හඹායමින් සියලු දේ ප්‍රාර්ථනා කරමින් මුලා වී සිටි බෞද්ධ සමාජයට, ශ්‍රද්ධාව යනු භක්තිය නොවෙන බවත්, මාර්ගය වැඩීමෙදී වර්ධනය වන ධර්මයක් බවත්, ප්‍රාර්ථනා කරමින් නිවන අත්කරගත නොහැකි බවත්, එ සදහා වැඩිය යුතු මාර්ගය ආර්ය අෂ්ඨාංගික මාර්ගය බවත්, පෙන්වාදුන් උන්වහන්සේගේ දේශනා මාලාව, 2008 වසරේ 'ගෞතම බුදුන් වහන්සේ වදාල නිවන් මග' යනුවෙන් පොතක් බවට පරිවර්තනය විය. එමෙන්ම, එම පොත උදෙසා තිබු දෙස් විදෙස් ආකර්ෂණය හෙතුකොට ගෙන එයින් වසර දෙකකට පසු එහි ඉංග්‍රිසි සහ වෙනත් භාෂා පරිවර්තනයන්ද බිහි විය. උන්වහන්සේගේ ධර්මය සමාජය තුළ කොතරම් පිබිදීමක් ඇතිකලේදයත්, එය සාම්ප්‍රදායික පන්සල් බුදු දහමට මරු පහරක් වීම හේතුවෙන්, උන්වහන්සේ විසින් පවත්වගෙන යනු ලැබූ කොත්මලේ කඩදොර ආරණ්‍ය සේනාසනය ප්‍රචණ්ඩකාරී පිරිසක් විසින්, දේශපලකයන්ගේ අනුදැනුමද ඇතුව පැය කිහිපයකින් විනාශ කරනු ලැබීය. බුදු දහම ප්‍රායෝගිකව ප්‍රගුණ කිරීම සදහා අවශ්‍ය සියලු අංගයන්ගෙන් සම්පුර්ණව වසර ගණනාවක් තිස්සේ පවත්වාගෙන යනු ලැබූ මෙම ආරණ්‍ය සේනාසනය බිඳ දැමීම නිර්මල දහම ගවේශනය කරන්නාවූ තරුණ පිරිසට සිදුකරනු ලබු අති මහත් විනාශයකි.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "සියලු සත්වයන් කෙරෙහි අනුකම්පාවෙන් තමා ප්‍රායෝගිකව ප්‍රගුණ කළ මාර්ගය ලොවට දේශනා කිරීම හේතුවෙන් වජිරබුද්ධි තෙරුණුවන් ලද පීඩාවන් එතෙකින් අවසන් නොවුනි. ආරම්භයේ සිටම පිණ්ඩපාතිකව එක් වේලක් පමණක් ආහර වලඳමින් යැපුණු මේ උතුම් බුද්ධ පුත්‍රයාණන්වහන්සේගේ පිණ්ඩපාතය වැළැක්වීමට තරම් වර්ථමාන සමාජය දූෂිත විය. එමෙන්ම, උන්වහන්සේ සොයා දානය රැගෙන පැමිණෙන දායකයින්හට තර්ජනය කර උන්වහන්සේව හුදකළා කිරිමට ප්‍රචණ්ඩකාරි පිරිස් නිරන්තරයෙන් උත්සාහ කළේය. උන්වහන්සේගේ දේශනා කෙරෙහි ගවේශනාත්මක තරුණ පිරිසගේ ආකර්ෂනය වැඩිවීමත්, එම දේශනා හේතුවෙන් සාම්ප්‍රධායික බුදු දහම ප්‍රසිද්ධියේ විවේචනයට ලක්වීමත් මොවුන්ගේ වෛරය වර්ධනය කිරිමට හේතුවක් විය. ඉතා විහිළු සහගත මෙන්ම අභූත හේතු මවමින් උන්වහන්සේට විරුද්ධව නඩු ගණනාවක් පැවරිම මෙහි තවත් ප්‍රතිඵලයක් විය. වනයක එකලාව වසන කෙසර සින්හයෙකු වන් බුද්ධ පුත්‍රයෙකු බොල් සුලඟකින් බිය ගැන්විය නොහැකිසේ ඔවුන්ගේ සියළු උත්සහයන් නිශ්ඵල වු තැන්හි, උන්වනසේ දැනට වැඩ වාසය කරන ශුණ්‍යාඝාරයට පෙට්‍රොල් බොම්බ ප්‍රහාර එල්ල කර උන්වහන්සේගේ ජීවිතයට හානි කිරීමට උත්සාහ කිරිමට තරම් මෙම සමාජය පාපකාරී විය. එහෙත්, ධර්මයෙහි හැසිරෙන්නා ධර්මය විසින් රකී යන බුද්ධ දේශනාව සනාතන සත්‍යයක් බව පසක් කරමින් උන්වනසේගේ රෝමකූපයකටවත් හානි කිරීමට මේ කිසිඳු උත්සාහයකට නොහැකි විය. එදා මෙදා තුර එල්ලවු සියලු අභියෝගයන් පයට පෑගෙන දූවිල්ලක් තරම්වත් නොසළකා අදටත් ශ්‍රි ලංකවේ මධ්‍ය කඳුකරයේ හුදකළාව වාසය කරන උන්වහ්න්සේ තමාගෙන් ලෝකයට විය යුතු මෙහෙය අඛණ්ඩව ඉටු කරමින් සිටියි.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "කිසිදු නිකායකට සම්බන්ධ නොවී, මාර්ගඵල ලාභී ගුරුවරු ඇසුරෙන් මාර්ගය ප්‍රගුණ කරන නිර්මල, ථේරවාද සම්ප්‍රදාය තුළ සිටින උන්වහන්සේ, 'සංඝ' යනුවෙන් බුදුන් වහන්සේ හදුන්වනු ලැබූ, සෝවන්, සකෘදාඝාමී, අනාඝාමි, මහරහත් පිරිසේ වර්තමනයේ වෙසෙන මුදුන් මල්කඩකි. චේතෝවිමුක්ත හෙවත් උභතෝබාගවිමුක්ත රහතන්වහන්සේ නමක් ලෙස සිය දේශනා තුළින් දහම් පෙළහැරපෑ උන්වහන්සේ, එම දේශනා ප්‍රාතිහාර්ය තුළින්ම තම අරහත්වය ලෝකයාහට ප්‍රකාෂයට පත්කළ මහා උත්තම‍යාණන්වහන්සේ නමකි.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "1957 වසරේ මහනුවරදි උපත ලබා දීප්තිමත් ශිෂ්‍යයකු ලෙස මහනුවර ප්‍රමුඛ පාසලකින් පාසල් ජීවිතය අවසන් කළ උන්වහන්සේ කොළඹ ප්‍රදේශයේ පළමු පෙලේ විශ්ව විද්‍යාලයක සිය විද්‍යාවේදී විශේෂ උපාධිය අවසන් කළේය. සිය දක්ෂතාවය නිසාම තරුණ අවදියේම ප්‍රසිද්ධ ආයතන කිහිපයක කළමණාකාර දූර හොබවා, දරු දැරියන් තිදෙනෙකුගේ සදාදරණීය පියෙකු ලෙස යහපත් සුඛෝපබොගී පවුල් ජීවිතයක් ගතකරමින් සිටියදී, බුදු දහමේ ප්‍රායෝගික සත්‍ය සොයා ගිය උත්තම‍යාණන්වහන්සේ නමකි. සිදුහත් කුමරුන් රජ සැප අත්හැරියා සේම, සිය සුඛෝපබොගී ලෞකික ජීවිතය අත්හැර වනවාසී වූ උන්වහන්සේ නිර්වානය සොයන වර්ථමාන තරුණ පිරිසට ජීවමාන පුර්වාදර්ශකි. ඉතා ලාමක සැප අත්හැර නොහැකිව නිවසේ සිට නිවන් සොයන්නට වෙර දරන කාමභෝගි ගිහි පිරිසට මේ මහා යතිවරයාණන්වහන්සේගේ චරිතය තුළින් උගත හැකි දේ අති මහත්ය. සතර සතිපට්ඨානය, ආර්ය අෂ්ඨාංගික මාර්ගය ප්‍රායෝගිකව වඩන අයුරු මනාසේ විස්තර කරමින් උන් වහන්සේ පැවත්වු දේශනා, නිවැරදි අධිෂ්ඨානයෙන් මාර්ගය සොයන, තවත් සියවස් ගණනාවක තරුණ පරපුරට අලෝකයක්ම වනු නොඅනුමානය.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "ලෝකවාසි සියළු සතුන්ගේ හිතසුව පිණිස ජීවමානව වැඩසිටින උභතෝභාගවිමුක්ත අතිපූජනීය වජිරබුද්ධි මහ රහතන්වහන්සේට අපගේ නමස්කාර වේවා!..",
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: AppBar(
              title: context.locale == Locale('en', 'US')
                  ? Text("The Maha Arahant")
                  : Text("මහ රහතන්වහන්සේ"),
              backgroundColor: Colors.grey[900],
              iconTheme: IconThemeData(
                  color: Colors.white,
                  size: 100 // This isn't performing any changes

                  ),
            )),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                  // height: height,
                  width: width,
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                  child: Center(
                      child: new Image(
                          image:
                              AssetImage('assets/images/the_arahath3a.jpg')))),
              Container(
                  // padding: EdgeInsets.all(20),
                  child: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                child: context.locale == Locale('en', 'US')
                    ? englishText()
                    : sinhala(),
              ))
            ],
          ),
        ));
  }
}
