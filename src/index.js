/* @flow */
import {
  Platform,
  NativeModules,
  Share,
  Alert,
} from 'react-native';

const { RNShareFile, RNPDFShareManager } = NativeModules;

export default {
  sharePDF: async (base64Data: string, provider: string, documentFileName: string): Promise<Error | void> => {
    try {
      Platform.select({
        ios: async () => {
          console.log('RNPDFShareManager',FileSharingModule);
          console.log('NativeModules',NativeModules);
          RNPDFShareManager.sharePDF(base64Data);
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
