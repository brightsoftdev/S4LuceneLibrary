#include "LCTextImporter.h"
#include "LCDateTools.h"
#include "LCMetadataAttribute.h"

#import "S4FileUtilities.h"




@implementation LCTextImporter

- (BOOL)metadataForFile: (NSString *)path type: (NSString *)type attributes: (NSMutableDictionary *)attributes
{
	NSString				*strContent;

	if ([[self types] containsObject: type] == NO) return NO;

	[attributes setObject: path forKey: LCPathAttribute];
	strContent = [NSString stringWithContentsOfFile: path encoding: NSUTF8StringEncoding  error: NULL];
	[attributes setObject: strContent forKey: LCTextContentAttribute];
	NSDictionary *attribs = [S4FileUtilities attributesOfItemAtPath: path];
	NSDate *modificationDate = [attribs objectForKey: NSFileModificationDate];
	if ([modificationDate isEqualToDate: [attributes objectForKey: LCContentModificationDateAttribute]] == NO)
	{
		[attributes setObject: [NSString stringWithCalendarDate: modificationDate resolution: LCResolution_SECOND]
					   forKey: LCContentModificationDateAttribute];
		[attributes setObject: [NSString stringWithCalendarDate: [NSDate date] resolution: LCResolution_SECOND]
					   forKey: LCMetadataChangeDateAttribute];
		return YES;
	}
	else
		return NO;
}

- (NSArray *) types
{
	return [NSArray arrayWithObjects: @"txt", @"text", nil];
}

- (NSString *) identifier
{
	return LCPathAttribute;
}

@end
