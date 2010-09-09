#include "LCLowerCaseFilter.h"

/**
* Normalizes token text to lower case.
 *
 * @version $Id: LCLowerCaseFilter.m 324 2005-10-06 21:16:28Z qmathe $
 */
@implementation LCLowerCaseFilter

- (LCToken *) nextToken
{
	LCToken *t = [input nextToken];
	
	if (t == nil)
		return nil;
	
	NSString *s = [[t termText] lowercaseString];
	[t setTermText: s];
	
	return t;
}

@end
