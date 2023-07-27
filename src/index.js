/* @flow */
import {
  Platform,
  NativeModules,
  Share,
  Alert,
} from 'react-native';

const { RNShareFile, RNPDFShareModule } = NativeModules;

export default {
  sharePDF: async (base64Data: string, provider: string, documentFileName: string): Promise<Error | void> => {
    try {
      Platform.select({
        ios: async () => {
          RNPDFShareModule.sharePDF(base64Data);
        },
        android: async () => {
          RNShareFile.share(base64Data, provider, documentFileName);
        },
      })();
    } catch (err) {
      console.log(err);
      return err;
    }
  },
};
