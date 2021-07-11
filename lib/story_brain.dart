import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;
  List<Story> _storyData = [
    Story(
        storyTitle:
            '¿Cuál de las opciones siguientes no es una categoría de informática en la nube?',
        choice1: 'Plataforma como servicio (PaaS)',
        choice2: 'Red como servicio (NaaS)',
        choice3: 'Infraestructura como servicio (IaaS)'),
    Story(
        storyTitle:
            '¿Cuál de las opciones siguientes no es un tipo de informática en la nube?',
        choice1: 'Nube pública',
        choice2: 'Nube híbrida',
        choice3: 'Nube distribuida'),
    Story(
        storyTitle:
            '¿Cuál es el mejor primer paso que debe tomar el equipo para comparar el coste de ejecutar estos entornos en Azure en lugar de en su centro de datos?',
        choice1:
            'Solo son entornos de prueba. Póngalos en marcha y compruebe la factura al final del mes.',
        choice2:
            'Supongamos que la ejecución en la nube cuesta lo mismo que la ejecución en el centro de datos.',
        choice3: 'Ejecute la calculadora de coste total de propiedad.'),
    Story(
        storyTitle:
            '¿Cuál de los siguientes servicios deben usarse cuando la preocupación principal es realizar un trabajo en respuesta a un evento (a menudo a través de un comando REST) que necesita una respuesta en unos segundos?',
        choice1: 'Azure Functions',
        choice2: 'Azure App Service',
        choice3: 'Azure Container Instances'),
    Story(
        storyTitle:
            '¿Qué servicio es una plataforma en la que se basa Application Insights y permite la supervisión de máquinas virtuales, contenedores y Kubernetes?',
        choice1: 'Azure Advisor',
        choice2: 'Azure Monitor',
        choice3: 'Azure Service Health'),
    Story(
        storyTitle:
            '¿Qué puede hacer el departamento de TI para reducir el número de veces que los usuarios se tienen que autenticar para acceder a varias aplicaciones?',
        choice1: 'SSO',
        choice2: 'Acceso condicional',
        choice3: 'Autenticación multifactor'),
    Story(
        storyTitle: '¡Todos aprobados!',
        choice1: 'Restart',
        choice2: '',
        choice3: ''),
  ];

  String getStory() {
    return _storyData[_storyNumber].getstoryTitle();
  }

  String getChoice1() {
    return _storyData[_storyNumber].getChoice1();
  }

  String getChoice2() {
    return _storyData[_storyNumber].getChoice2();
  }

  String getChoice3() {
    return _storyData[_storyNumber].getChoice3();
  }

  void restart() {
    _storyNumber = 0;
  }

  void ErrorOption() {}

  bool nextStory(int choiceNumber) {
    if (choiceNumber < _storyData.length - 1) {
      int _previousStoryNumber = _storyNumber;
      switch (_storyNumber) {
        case 0:
          if (choiceNumber == 2) {
            _storyNumber = 1;
          } else {
            _storyNumber = 0;
          }
          break;
        case 1:
          if (choiceNumber == 3) {
            _storyNumber = 2;
          } else {
            _storyNumber = 1;
            ErrorOption();
          }
          break;
        case 2:
          if (choiceNumber == 3) {
            _storyNumber = 3;
          } else {
            _storyNumber = 2;
            ErrorOption();
          }
          break;
        case 3:
          if (choiceNumber == 1) {
            _storyNumber = 4;
          } else {
            _storyNumber = 3;
            ErrorOption();
          }
          break;
        case 4:
          if (choiceNumber == 2) {
            _storyNumber = 5;
          } else {
            _storyNumber = 4;
            ErrorOption();
          }
          break;
        case 5:
          if (choiceNumber == 1) {
            _storyNumber = 6;
          } else {
            _storyNumber = 5;
            ErrorOption();
          }

          break;
        case 6:
          restart();
          break;
        case 7:
          restart();
          break;
      }
      return _previousStoryNumber == _storyNumber;
    }
  }

  bool buttonShouldBeVisible() {
    return _storyNumber != 6;
  }
}
