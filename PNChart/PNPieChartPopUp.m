//
//  PNPieChartPopUp.m
//  Pods
//
//  Created by Antonin Biret on 19/03/15.
//
//

#import "PNPieChartPopUp.h"
#import "PNPieChartDataItem.h"

#define VERTICAL_MARGIN 10.0
#define HORIZONTAL_MARGIN 10.0

@interface PNPieChartPopUp ()

@end


@implementation PNPieChartPopUp

-(id)initWithFrame:(CGRect)frame item:(PNPieChartDataItem *)item {
    self = [super initWithFrame:frame];
    if(self){
        [self setupLayer];
        [self setupSubviewsWithItem:item];
    }
    return self;
}

- (void)setupLayer {
    self.layer.cornerRadius = 10.0;
    self.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.layer.shadowOffset = CGSizeMake(5.0, 5.0);
    self.layer.shadowOpacity = 0.5;
    self.layer.shadowRadius = 4.0;
}

- (void)setupSubviewsWithItem:(PNPieChartDataItem *)item {
    self.backgroundColor = item.color;
    
    CGFloat currentY = VERTICAL_MARGIN;
    
    self.titleLabel = [self createLabelWithFontSize:18.0];
    _titleLabel.frame = CGRectMake(HORIZONTAL_MARGIN, currentY, self.bounds.size.width - 2 * HORIZONTAL_MARGIN, 20.0);
    _titleLabel.text = item.textDescription;
    [self addSubview:_titleLabel];
    
    currentY += _titleLabel.bounds.size.height + VERTICAL_MARGIN;
    
    self.contentLabel = [self createLabelWithFontSize:14.0];
    _contentLabel.text = item.textPopUp;
    _contentLabel.numberOfLines = 0;
    _contentLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    CGSize maximumLabelSize = CGSizeMake(self.bounds.size.width - 2 * HORIZONTAL_MARGIN, self.bounds.size.height - VERTICAL_MARGIN - currentY);
    CGSize expectedSize = [_contentLabel sizeThatFits:maximumLabelSize];
    _contentLabel.frame = CGRectMake(HORIZONTAL_MARGIN, currentY, expectedSize.width, MIN(expectedSize.height, maximumLabelSize.height));
    
    [self addSubview:_contentLabel];
}

- (UILabel *)createLabelWithFontSize:(CGFloat)fontSize {
    UILabel *label = [[UILabel alloc] init];
    label.textColor = [UIColor whiteColor];
    label.font  = [UIFont fontWithName:@"Avenir-Medium" size:fontSize];
    label.shadowColor = [[UIColor blackColor] colorWithAlphaComponent:0.4];
    label.shadowOffset = CGSizeMake(0, 1);
    label.layer.masksToBounds = NO;
    return label;
}

@end
