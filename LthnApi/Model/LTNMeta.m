#import "LTNMeta.h"

@implementation LTNMeta

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"duration": @"duration", @"page": @"page", @"perPage": @"per_page", @"requestId": @"request_id", @"total": @"total" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"duration", @"page", @"perPage", @"requestId", @"total"];
  return [optionalProperties containsObject:propertyName];
}

@end
