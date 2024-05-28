class Apis {
  //// Base URl   ////
  static const baseUrl = 'https://sportify-api.testedu.online/';

  //// login api  //
  static const logInApi = '${baseUrl}auth/login';
  static const signUpApi = '${baseUrl}auth/signup/user';
// Get All University List   //
  static const getUnilist = '${baseUrl}university/Universities';
// Get All Games Catogory  //
  static const getGamelist = '${baseUrl}category/GetCategories';
//  Upload Image
  static const uploadimage = '${baseUrl}user/userImage';

  ///   listing tournaments
  ///
  static const listingtournaments = '${baseUrl}tournament/getTournaments';
  static const getimagespath = '${baseUrl}paid-services/getSliderImages';
  static const jointournaments = '${baseUrl}tournament/join';
  //// ADD REMARKS
  //// GET QUOTATION
}
