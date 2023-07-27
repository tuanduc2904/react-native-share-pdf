#import "RNPDFShareManager.h"
#import <React/RCTLog.h>
#import <React/RCTUtils.h>

@implementation RNPDFShareManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(sharePDF:(NSString *)base64PDF) {
    NSData *pdfData = [[NSData alloc] initWithBase64EncodedString:base64PDF options:0];
    NSString *fileName = @"file.pdf"; // Tên tệp PDF sẽ được chia sẻ

    NSArray *activityItems = @[pdfData];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];

    // Chạy UIActivityViewController
    UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
    [rootViewController presentViewController:activityViewController animated:YES completion:nil];
}

@end
