//
//  PNPieChartPopUp.h
//  Pods
//
//  Created by Antonin Biret on 19/03/15.
//
//

#import <UIKit/UIKit.h>

@class PNPieChartDataItem;

@interface PNPieChartPopUp : UIView

@property(nonatomic, strong)UILabel *titleLabel;

@property(nonatomic, strong)UILabel *contentLabel;

-(id)initWithFrame:(CGRect)frame item:(PNPieChartDataItem *)item;



@end
