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
      
      RNShareFile.share(base64Data, provider, documentFileName);
    } catch (err) {
      return err;
    }
  },
};
