#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(RNPDFShareManager, NSObject)

RCT_EXTERN_METHOD(sharePDF:(NSString *)base64PDF)

@end
