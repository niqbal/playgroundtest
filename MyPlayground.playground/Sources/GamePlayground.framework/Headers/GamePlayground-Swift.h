// Generated by Apple Swift version 3.0.2 (swiftlang-800.0.63 clang-800.0.42.1)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if defined(__has_include) && __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if defined(__has_attribute) && __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
# if defined(__has_feature) && __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) SWIFT_ENUM(_type, _name)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if defined(__has_feature) && __has_feature(modules)
@import UIKit;
@import ObjectiveC;
@import Foundation;
@import SpriteKit;
@import CoreGraphics;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
@class UIWindow;
@class UIApplication;

SWIFT_CLASS("_TtC14GamePlayground11AppDelegate")
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow * _Nullable window;
- (BOOL)application:(UIApplication * _Nonnull)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> * _Nullable)launchOptions;
- (void)applicationWillResignActive:(UIApplication * _Nonnull)application;
- (void)applicationDidEnterBackground:(UIApplication * _Nonnull)application;
- (void)applicationWillEnterForeground:(UIApplication * _Nonnull)application;
- (void)applicationDidBecomeActive:(UIApplication * _Nonnull)application;
- (void)applicationWillTerminate:(UIApplication * _Nonnull)application;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class NSCoder;

SWIFT_CLASS("_TtC14GamePlayground8GameData")
@interface GameData : NSObject <NSCoding>
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)encodeWithCoder:(NSCoder * _Nonnull)aCoder;
- (void)setEasyDifficultyScore:(int32_t)easyDifficultyScore;
- (void)setEasyDifficultyCoinScore:(int32_t)easyDifficultyCoinScore;
- (int32_t)getEasyDifficultyScore;
- (int32_t)getEasyDifficultyCoinScore;
- (void)setMediumDifficultyScore:(int32_t)mediumDifficultyScore;
- (void)setMediumDifficultyCoinScore:(int32_t)mediumDifficultyCoinScore;
- (int32_t)getMediumDifficultyScore;
- (int32_t)getMediumDifficultyCoinScore;
- (void)setHardDifficultyScore:(int32_t)hardDifficultyScore;
- (void)setHardDifficultyCoinScore:(int32_t)hardDifficultyCoinScore;
- (int32_t)getHardDifficultyScore;
- (int32_t)getHardDifficultyCoinScore;
- (void)setEasyDifficulty:(BOOL)easyDifficulty;
- (BOOL)getEasyDifficulty;
- (void)setMediumDifficulty:(BOOL)mediumDifficulty;
- (BOOL)getMediumDifficulty;
- (void)setHardDifficulty:(BOOL)hardDifficulty;
- (BOOL)getHardDifficulty;
- (void)setIsMusicOn:(BOOL)isMusicOn;
- (BOOL)getIsMusicOn;
@end

@class UITouch;
@class UIEvent;

SWIFT_CLASS("_TtC14GamePlayground13GameOverScene")
@interface GameOverScene : SKScene
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
- (nonnull instancetype)initWithSize:(CGSize)size OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class NSBundle;

SWIFT_CLASS("_TtC14GamePlayground18GameViewController")
@interface GameViewController : UIViewController
- (void)viewDidLoad;
@property (nonatomic, readonly) BOOL shouldAutorotate;
@property (nonatomic, readonly) UIInterfaceOrientationMask supportedInterfaceOrientations;
- (void)didReceiveMemoryWarning;
@property (nonatomic, readonly) BOOL prefersStatusBarHidden;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class Player;
@class IMProgressBar;
@class SKSpriteNode;
@class SKLabelNode;
@class SKView;
@class SKPhysicsContact;

SWIFT_CLASS("_TtC14GamePlayground18GameplaySceneClass")
@interface GameplaySceneClass : SKScene <SKPhysicsContactDelegate>
@property (nonatomic, strong) Player * _Nullable player;
@property (nonatomic, strong) IMProgressBar * _Nullable iMProgressBar;
@property (nonatomic, strong) SKSpriteNode * _Nullable item;
@property (nonatomic) CGFloat center;
@property (nonatomic) CGFloat t;
@property (nonatomic) CGFloat num;
@property (nonatomic) CGFloat w;
@property (nonatomic) CGFloat x;
@property (nonatomic) BOOL canMove;
@property (nonatomic) BOOL moveLeft;
@property (nonatomic, strong) SKLabelNode * _Nullable scoreLabel;
@property (nonatomic) NSInteger score;
@property (nonatomic) NSInteger count;
@property (nonatomic) NSInteger n1;
@property (nonatomic) NSInteger n2;
@property (nonatomic) NSInteger n3;
@property (nonatomic) NSInteger n4;
@property (nonatomic) NSInteger n5;
- (void)didMoveToView:(SKView * _Nonnull)view;
- (void)update:(NSTimeInterval)currentTime;
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
- (void)touchesEnded:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
- (void)didBeginContact:(SKPhysicsContact * _Nonnull)contact;
- (void)spawnItems;
- (void)restartGame;
- (void)removeItems;
- (nonnull instancetype)initWithSize:(CGSize)size OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class SKCropNode;

SWIFT_CLASS("_TtC14GamePlayground13IMProgressBar")
@interface IMProgressBar : SKNode
@property (nonatomic, strong) SKSpriteNode * _Nullable emptySprite;
@property (nonatomic, strong) SKCropNode * _Nonnull progressBar;
- (nonnull instancetype)initWithEmptyImageName:(NSString * _Null_unspecified)emptyImageName filledImageName:(NSString * _Nonnull)filledImageName OBJC_DESIGNATED_INITIALIZER;
- (void)setXProgressWithXProgress:(CGFloat)xProgress;
- (void)setYProgressWithYProgress:(CGFloat)yProgress;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
@end

@class SKAudioNode;

SWIFT_CLASS("_TtC14GamePlayground13MainMenuScene")
@interface MainMenuScene : SKScene
@property (nonatomic, strong) SKAudioNode * _Null_unspecified BackGroundMusic;
- (void)didMoveToView:(SKView * _Nonnull)view;
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
- (nonnull instancetype)initWithSize:(CGSize)size OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC14GamePlayground8NextMenu")
@interface NextMenu : SKScene
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
- (nonnull instancetype)initWithSize:(CGSize)size OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class SKTexture;
@class UIColor;

SWIFT_CLASS("_TtC14GamePlayground6Player")
@interface Player : SKSpriteNode
- (void)initializePlayer SWIFT_METHOD_FAMILY(none);
- (void)moveWithLeft:(BOOL)left;
- (nonnull instancetype)initWithTexture:(SKTexture * _Nullable)texture color:(UIColor * _Nonnull)color size:(CGSize)size OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC14GamePlayground15ResumeMenuScene")
@interface ResumeMenuScene : SKScene
@property (nonatomic, strong) SKAudioNode * _Null_unspecified BackGroundMusic;
- (void)didMoveToView:(SKView * _Nonnull)view;
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
- (nonnull instancetype)initWithSize:(CGSize)size OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC14GamePlayground11SecondScene")
@interface SecondScene : SKScene <SKPhysicsContactDelegate>
@property (nonatomic, strong) Player * _Nullable player;
@property (nonatomic, strong) IMProgressBar * _Nullable iMProgressBar;
@property (nonatomic, strong) SKSpriteNode * _Nullable item;
@property (nonatomic) CGFloat center;
@property (nonatomic) CGFloat t;
@property (nonatomic) CGFloat num;
@property (nonatomic) CGFloat w;
@property (nonatomic) CGFloat x;
@property (nonatomic) BOOL canMove;
@property (nonatomic) BOOL moveLeft;
@property (nonatomic, strong) SKLabelNode * _Nullable scoreLabel;
@property (nonatomic) NSInteger score;
@property (nonatomic) NSInteger count;
@property (nonatomic) NSInteger n1;
@property (nonatomic) NSInteger n2;
@property (nonatomic) NSInteger n3;
@property (nonatomic) NSInteger n4;
@property (nonatomic) NSInteger n5;
@property (nonatomic) NSInteger n6;
- (void)didMoveToView:(SKView * _Nonnull)view;
- (void)update:(NSTimeInterval)currentTime;
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
- (void)touchesEnded:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
- (void)didBeginContact:(SKPhysicsContact * _Nonnull)contact;
- (void)spawnItems;
- (void)restartGame;
- (void)removeItems;
- (nonnull instancetype)initWithSize:(CGSize)size OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC14GamePlayground10ThirdScene")
@interface ThirdScene : SKScene <SKPhysicsContactDelegate>
@property (nonatomic, strong) Player * _Nullable player;
@property (nonatomic, strong) IMProgressBar * _Nullable iMProgressBar;
@property (nonatomic, strong) SKSpriteNode * _Nullable item;
@property (nonatomic) CGFloat center;
@property (nonatomic) CGFloat t;
@property (nonatomic) CGFloat num;
@property (nonatomic) CGFloat w;
@property (nonatomic) CGFloat x;
@property (nonatomic) BOOL canMove;
@property (nonatomic) BOOL moveLeft;
@property (nonatomic, strong) SKLabelNode * _Nullable scoreLabel;
@property (nonatomic) NSInteger score;
@property (nonatomic) NSInteger count;
@property (nonatomic) NSInteger n1;
@property (nonatomic) NSInteger n2;
@property (nonatomic) NSInteger n3;
@property (nonatomic) NSInteger n4;
@property (nonatomic) NSInteger n5;
@property (nonatomic) NSInteger n6;
- (void)didMoveToView:(SKView * _Nonnull)view;
- (void)update:(NSTimeInterval)currentTime;
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
- (void)touchesEnded:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
- (void)didBeginContact:(SKPhysicsContact * _Nonnull)contact;
- (void)spawnItems;
- (void)restartGame;
- (void)removeItems;
- (nonnull instancetype)initWithSize:(CGSize)size OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

#pragma clang diagnostic pop
