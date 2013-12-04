#encoding: utf-8

# Add temporary patient

Staff.create(familyName:'Bertrand',firstName:'Thomas', email:'t.bertrand@outlook.com', sex:'0' )
Patient.create(familyName:'Bertrand',firstName:'Stephane', email:'s.bertrand@outlook.com', sex:'0' )
Patient.create(familyName:'Bertrand',firstName:'Claire', email:'c.bertrand@outlook.com', sex:'1' )
Patient.create(familyName:'Aldaz',firstName:'Jayro', email:'aldazj@outlook.com', sex:'1' )
Patient.create(familyName:'Jaramillo',firstName:'Andres', email:'andres@bacchusproject.ch', sex:'1' )

# Create introduction_questions
IntroductionQuestion.create(idQuestion:1, tag:'1',	has_comment:'0', woman:'0', question:'Avez-vous déjà consulté un ostéopathe ?')
FormatQuestion.create(introduction_question_id: '1' ,has_value: '0', value_format: '', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:2, tag:'',	has_comment:'1', woman:'0', question:'quand pour la dernière fois ?')
FormatQuestion.create(introduction_question_id: '2' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:3, tag:'2',	has_comment:'1', woman:'0', question:'Avez-vous suivi au cours des 5 dernières années ou suivez-vous actuellement un traitement médical?')
FormatQuestion.create(introduction_question_id: '3' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:4, tag:'3',	has_comment:'0', woman:'0', question:'Avez-vous été opéré depuis votre naissance ?')
FormatQuestion.create(introduction_question_id: '4' ,has_value: '0', value_format: '', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:5, tag:'',	has_comment:'1', woman:'0', question:'précisez la raison et la date de l’intervention')
FormatQuestion.create(introduction_question_id: '5' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:6, tag:'a',	has_comment:'1', woman:'0', question:'Avez-vous du matériel resté en place (plaque, vis, port à cath, etc.)?')
FormatQuestion.create(introduction_question_id: '6' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:7, tag:'4',	has_comment:'1', woman:'0', question:'Avez-vous été hospitalisé(e) ou une hospitalisation est-elle envisagée?')
FormatQuestion.create(introduction_question_id: '7' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:8, tag:'5',	has_comment:'1', woman:'0', question:'Avez-vous été ou êtes-vous actuellement en incapacité de travail?')
FormatQuestion.create(introduction_question_id: '8' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:9, tag:'6',	has_comment:'1', woman:'0', question:'Prenez-vous actuellement des médicaments?')
FormatQuestion.create(introduction_question_id: '9' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:10, tag:'7',	has_comment:'1', woman:'0', question:'Avez-vous été victime d’accidents ?')
FormatQuestion.create(introduction_question_id: '10' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:11, tag:'8',	has_comment:'1', woman:'0', question:'Souffrez-vous actuellement ou avez-vous souffert de troubles de la santé ou avez-vous des dispositions aux maladies suivantes:')
FormatQuestion.create(introduction_question_id: '11' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:12, tag:'a',	has_comment:'1', woman:'0', question:'des organes respiratoires (par ex. asthme, bronchite chronique, emphysème, pneumonie)?')
FormatQuestion.create(introduction_question_id: '12' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:13, tag:'b',	has_comment:'1', woman:'0', question:'de l’appareil cardio-vasculaire (par ex. troubles cardiaques, tension artérielle, embolies, varices, thrombose)?')
FormatQuestion.create(introduction_question_id: '13' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:14, tag:'c',	has_comment:'1', woman:'0', question:'d’affections de l’appareil digestif (par ex. de l’oesophage, de l’estomac, de la vésicule biliaire, du foie, du pancréas, des intestins,	hémorroïdes)?')
FormatQuestion.create(introduction_question_id: '14' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:15, tag:'d',	has_comment:'1', woman:'0', question:'des os, des articulations ou des muscles (par ex. rhumatisme, arthrose, ostéoporose, malformations)?')
FormatQuestion.create(introduction_question_id: '15' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:16, tag:'e',	has_comment:'1', woman:'0', question:'du dos (par ex. hernie discale, atteintes cervicales, sciatique, lombalgie)?')
FormatQuestion.create(introduction_question_id: '16' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:17, tag:'f',	has_comment:'1', woman:'0', question:'des yeux ou des oreilles?')
FormatQuestion.create(introduction_question_id: '17' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:18, tag:'g',	has_comment:'1', woman:'0', question:'des reins, des organes génitaux, de la vessie ou de la prostate (par ex. calculs, malformations, tumeurs)?')
FormatQuestion.create(introduction_question_id: '18' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:19, tag:'h',	has_comment:'1', woman:'0', question:'du système nerveux (par ex. symptômes de paralysie, épilepsie, migraines, vertiges, tumeurs)?')
FormatQuestion.create(introduction_question_id: '19' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:20, tag:'i',	has_comment:'1', woman:'0', question:'du métabolisme, du sang (par ex. diabète, goutte, anémie, leucémie, affection de la rate)?')
FormatQuestion.create(introduction_question_id: '20' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:21, tag:'j',	has_comment:'1', woman:'0', question:'maladies endocriniennes (par ex. thyroïde, surrénales,	hypophyse)?')
FormatQuestion.create(introduction_question_id: '21' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:22, tag:'k',	has_comment:'1', woman:'0', question:'de la peau (par ex. allergies, eczéma, psoriasis, cancers)?')
FormatQuestion.create(introduction_question_id: '22' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:23, tag:'l',	has_comment:'1', woman:'0', question:'autres affections, malformations ou infirmités non mentionnées ci-dessus?')
FormatQuestion.create(introduction_question_id: '23' ,has_value: '1', value_format: 'string', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:24, tag:'9',	has_comment:'1', woman:'1', question:'Avez-vous ou souffrez-vous d’une affection gynécologique, d’une affection des seins, de stérilité?')
FormatQuestion.create(introduction_question_id: '24' ,has_value: '1', value_format: 'string', women: '1', required: '0')

IntroductionQuestion.create(idQuestion:25, tag:'10',	has_comment:'0', woman:'1', question:'Avez-vous des enfants ?')
FormatQuestion.create(introduction_question_id: '25' ,has_value: '0', value_format: '', women: '1', required: '0')

IntroductionQuestion.create(idQuestion:26, tag:'',	has_comment:'1', woman:'1', question:'précisez leur date de naissance et si la naissance s’est faite sans complication (césarienne, curetage etc.)')
FormatQuestion.create(introduction_question_id: '26' ,has_value: '1', value_format: 'string', women: '1', required: '0')

IntroductionQuestion.create(idQuestion:27, tag:'11',	has_comment:'0', woman:'1', question:'Etes-vous enceinte?')
FormatQuestion.create(introduction_question_id: '27' ,has_value: '0', value_format: '', women: '1', required: '0')

IntroductionQuestion.create(idQuestion:28, tag:'',	has_comment:'1', woman:'1', question:'date de vos dernières règles ?')
FormatQuestion.create(introduction_question_id: '28' ,has_value: '1', value_format: 'date', women: '1', required: '0')

IntroductionQuestion.create(idQuestion:29, tag:'12',	has_comment:'1', woman:'0', question:'Indiquez votre taille:')
FormatQuestion.create(introduction_question_id: '29' ,has_value: '1', value_format: 'integer', women: '0', required: '1')

IntroductionQuestion.create(idQuestion:30, tag:'13',	has_comment:'1', woman:'0', question:'Indiquez votre poids:')
FormatQuestion.create(introduction_question_id: '30' ,has_value: '1', value_format: 'integer', women: '0', required: '1')

IntroductionQuestion.create(idQuestion:31, tag:'14',	has_comment:'0', woman:'0', question:'Fumez-vous?')
FormatQuestion.create(introduction_question_id: '31' ,has_value: '0', value_format: '', women: '0', required: '0')

IntroductionQuestion.create(idQuestion:32, tag:'',	has_comment:'1', woman:'0', question:'combien par jour?')
FormatQuestion.create(introduction_question_id: '32' ,has_value: '1', value_format: 'string', women: '0', required: '0')
