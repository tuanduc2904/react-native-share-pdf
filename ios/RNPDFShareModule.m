// RNPDFShareModule.m

#import "RNPDFShareModule.h"
#import <React/RCTLog.h>
#import <React/RCTConvert.h>
#import <React/RCTUtils.h>

@implementation RNPDFShareModule

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(sharePDF:(NSString *)base64PDF) {
  NSData *pdfData = [[NSData alloc] initWithBase64EncodedString:base64PDF options:0];
  NSString *fileName = [NSString stringWithFormat:@"file.pdf"];

  NSArray *activityItems = @[pdfData, fileName];
  UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];

  UIViewController *rootViewController = RCTPresentedViewController();
  if (rootViewController != nil) {
    [rootViewController presentViewController:activityViewController animated:YES completion:nil];
  }
}

@end

RCT_EXTERN_METHOD(sharePDF:(NSString *)base64PDF);
