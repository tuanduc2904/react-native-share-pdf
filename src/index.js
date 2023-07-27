/* @flow */
import {
  Platform,
  NativeModules,
  Share,
  Alert,
} from 'react-native';

const { RNShareFile } = NativeModules;

export default {
  sharePDF: async (base64Data: string, provider: string, documentFileName: string): Promise<Error | void> => {
    try {
      Platform.select({
        ios: async () => {
           Share.share(base64Data);
        },
        android: async () => {
           RNShareFile.share(base64Data, documentFileName);
        },
      })();
    } catch (err) {
      return err;
    }
  },
};
