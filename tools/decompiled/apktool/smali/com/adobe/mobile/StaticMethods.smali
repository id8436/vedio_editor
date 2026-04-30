.class final Lcom/adobe/mobile/StaticMethods;
.super Ljava/lang/Object;
.source "StaticMethods.java"


# static fields
.field private static final ADID_DPID:Ljava/lang/String; = "20914"

.field private static final AID_JSON_ID_KEY:Ljava/lang/String; = "id"

.field private static final BYTE_TO_HEX:[C

.field private static final CARRIER_NAME_KEY:Ljava/lang/String; = "a.CarrierName"

.field private static final DEVICE_NAME_KEY:Ljava/lang/String; = "a.DeviceName"

.field protected static final LAST_KNOWN_TIMESTAMP_KEY:Ljava/lang/String; = "ADBLastKnownTimestampKey"

.field protected static final LIBRARY_VERSION:Ljava/lang/String; = "4.8.2-AN"

.field private static final MCPNS_DPID:Ljava/lang/String; = "20919"

.field private static final NO_ACTIVITY_MESSAGE:Ljava/lang/String; = "Message - No Current Activity (Messages must have a reference to the current activity to work properly)"

.field private static final NO_CONTEXT_MESSAGE:Ljava/lang/String; = "Config - No Application Context (Application context must be set prior to calling any library functions.)"

.field private static final NO_SHARED_PREFERENCES_EDITOR_MESSAGE:Ljava/lang/String; = "Config - Unable to create an instance of a SharedPreferences Editor"

.field private static final NO_SHARED_PREFERENCES_MESSAGE:Ljava/lang/String; = "Config - No SharedPreferences available"

.field private static final PUSH_ID_ENABLED_ACTION_NAME:Ljava/lang/String; = "Push"

.field private static final RESOLUTION_KEY:Ljava/lang/String; = "a.Resolution"

.field private static final RUN_MODE_APPLICATION:Ljava/lang/String; = "Application"

.field private static final RUN_MODE_EXTENSION:Ljava/lang/String; = "Extension"

.field private static final RUN_MODE_KEY:Ljava/lang/String; = "a.RunMode"

.field protected static final TIME_SINCE_LAUNCH_KEY:Ljava/lang/String; = "a.TimeSinceLaunch"

.field private static _activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final _advertisingIdentifierMutex:Ljava/lang/Object;

.field private static _aidDone:Z

.field private static final _aidMutex:Ljava/lang/Object;

.field private static final _analyticsExecutorMutex:Ljava/lang/Object;

.field private static _appType:Lcom/adobe/mobile/Config$ApplicationType;

.field private static final _applicationIDMutex:Ljava/lang/Object;

.field private static final _applicationNameMutex:Ljava/lang/Object;

.field private static final _applicationVersionCodeMutex:Ljava/lang/Object;

.field private static final _applicationVersionMutex:Ljava/lang/Object;

.field private static final _audienceExecutorMutex:Ljava/lang/Object;

.field private static final _carrierMutex:Ljava/lang/Object;

.field static final _contextDataKeyWhiteList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static _contextDataKeyWhiteListCount:I

.field private static final _currentActivityMutex:Ljava/lang/Object;

.field private static _debugLogging:Z

.field private static final _defaultDataMutex:Ljava/lang/Object;

.field private static _isWearable:Z

.field private static final _mediaExecutorMutex:Ljava/lang/Object;

.field private static final _messageImageCachingExecutorMutex:Ljava/lang/Object;

.field private static final _messagesExecutorMutex:Ljava/lang/Object;

.field private static final _operatingSystemMutex:Ljava/lang/Object;

.field private static final _pushEnabledMutex:Ljava/lang/Object;

.field private static final _pushIdentifierMutex:Ljava/lang/Object;

.field private static final _resolutionMutex:Ljava/lang/Object;

.field private static final _sharedExecutorMutex:Ljava/lang/Object;

.field private static final _sharedPreferencesMutex:Ljava/lang/Object;

.field private static final _thirdPartyCallbacksExecutorMutex:Ljava/lang/Object;

.field private static final _timedActionsExecutorMutex:Ljava/lang/Object;

.field private static final _timestampMutex:Ljava/lang/Object;

.field private static final _userAgentMutex:Ljava/lang/Object;

.field private static final _userIdentifierMutex:Ljava/lang/Object;

.field private static final _visitorIDMutex:Ljava/lang/Object;

.field private static advertisingIdentifier:Ljava/lang/String;

.field private static aid:Ljava/lang/String;

.field private static analyticsExecutor:Ljava/util/concurrent/ExecutorService;

.field private static appID:Ljava/lang/String;

.field private static appName:Ljava/lang/String;

.field private static audienceExecutor:Ljava/util/concurrent/ExecutorService;

.field private static carrier:Ljava/lang/String;

.field private static final contextDataMask:[Z

.field private static defaultData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final encodedChars:[Ljava/lang/String;

.field private static mediaExecutor:Ljava/util/concurrent/ExecutorService;

.field private static messageImageCachingExecutor:Ljava/util/concurrent/ExecutorService;

.field private static messagesExecutor:Ljava/util/concurrent/ExecutorService;

.field private static operatingSystem:Ljava/lang/String;

.field private static prefs:Landroid/content/SharedPreferences;

.field private static pushEnabled:Z

.field private static pushIdentifier:Ljava/lang/String;

.field private static resolution:Ljava/lang/String;

.field private static sharedContext:Landroid/content/Context;

.field private static sharedExecutor:Ljava/util/concurrent/ExecutorService;

.field private static thirdPartyCallbacksExecutor:Ljava/util/concurrent/ExecutorService;

.field private static timedActionsExecutor:Ljava/util/concurrent/ExecutorService;

.field private static timestamp:Ljava/lang/String;

.field private static userAgent:Ljava/lang/String;

.field private static final utf8Mask:[Z

.field private static versionCode:I

.field private static versionName:Ljava/lang/String;

.field private static visitorID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 97
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "%00"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string/jumbo v2, "%01"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "%02"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "%03"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "%04"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "%05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "%06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "%07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "%08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "%09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "%0A"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "%0B"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "%0C"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "%0D"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "%0E"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "%0F"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "%10"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "%11"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "%12"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "%13"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "%14"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "%15"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "%16"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "%17"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "%18"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "%19"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "%1A"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "%1B"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "%1C"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "%1D"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "%1E"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "%1F"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "%20"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "%21"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "%22"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "%23"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "%24"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "%25"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "%26"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "%27"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "%28"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "%29"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "%2B"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "%2C"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "%2F"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "%3A"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "%3B"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "%3C"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "%3D"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "%3E"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "%3F"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "%40"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "%5B"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "%5C"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "%5D"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "%5E"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string/jumbo v2, "%60"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string/jumbo v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string/jumbo v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string/jumbo v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string/jumbo v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string/jumbo v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string/jumbo v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string/jumbo v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string/jumbo v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string/jumbo v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string/jumbo v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string/jumbo v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "%7B"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string/jumbo v2, "%7C"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string/jumbo v2, "%7D"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string/jumbo v2, "%7E"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string/jumbo v2, "%7F"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string/jumbo v2, "%80"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string/jumbo v2, "%81"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string/jumbo v2, "%82"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string/jumbo v2, "%83"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string/jumbo v2, "%84"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string/jumbo v2, "%85"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string/jumbo v2, "%86"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string/jumbo v2, "%87"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string/jumbo v2, "%88"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string/jumbo v2, "%89"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string/jumbo v2, "%8A"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string/jumbo v2, "%8B"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string/jumbo v2, "%8C"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string/jumbo v2, "%8D"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string/jumbo v2, "%8E"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string/jumbo v2, "%8F"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string/jumbo v2, "%90"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string/jumbo v2, "%91"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string/jumbo v2, "%92"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string/jumbo v2, "%93"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string/jumbo v2, "%94"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string/jumbo v2, "%95"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string/jumbo v2, "%96"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string/jumbo v2, "%97"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string/jumbo v2, "%98"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string/jumbo v2, "%99"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string/jumbo v2, "%9A"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string/jumbo v2, "%9B"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string/jumbo v2, "%9C"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string/jumbo v2, "%9D"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string/jumbo v2, "%9E"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string/jumbo v2, "%9F"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string/jumbo v2, "%A0"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string/jumbo v2, "%A1"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string/jumbo v2, "%A2"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string/jumbo v2, "%A3"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string/jumbo v2, "%A4"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string/jumbo v2, "%A5"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string/jumbo v2, "%A6"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string/jumbo v2, "%A7"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string/jumbo v2, "%A8"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string/jumbo v2, "%A9"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string/jumbo v2, "%AA"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string/jumbo v2, "%AB"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string/jumbo v2, "%AC"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string/jumbo v2, "%AD"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string/jumbo v2, "%AE"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string/jumbo v2, "%AF"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string/jumbo v2, "%B0"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string/jumbo v2, "%B1"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string/jumbo v2, "%B2"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string/jumbo v2, "%B3"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string/jumbo v2, "%B4"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string/jumbo v2, "%B5"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string/jumbo v2, "%B6"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string/jumbo v2, "%B7"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string/jumbo v2, "%B8"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string/jumbo v2, "%B9"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string/jumbo v2, "%BA"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string/jumbo v2, "%BB"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string/jumbo v2, "%BC"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string/jumbo v2, "%BD"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string/jumbo v2, "%BE"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string/jumbo v2, "%BF"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string/jumbo v2, "%C0"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string/jumbo v2, "%C1"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string/jumbo v2, "%C2"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string/jumbo v2, "%C3"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string/jumbo v2, "%C4"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string/jumbo v2, "%C5"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string/jumbo v2, "%C6"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string/jumbo v2, "%C7"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string/jumbo v2, "%C8"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string/jumbo v2, "%C9"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string/jumbo v2, "%CA"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string/jumbo v2, "%CB"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string/jumbo v2, "%CC"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string/jumbo v2, "%CD"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string/jumbo v2, "%CE"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string/jumbo v2, "%CF"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string/jumbo v2, "%D0"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string/jumbo v2, "%D1"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string/jumbo v2, "%D2"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string/jumbo v2, "%D3"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string/jumbo v2, "%D4"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string/jumbo v2, "%D5"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string/jumbo v2, "%D6"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string/jumbo v2, "%D7"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string/jumbo v2, "%D8"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string/jumbo v2, "%D9"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string/jumbo v2, "%DA"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string/jumbo v2, "%DB"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string/jumbo v2, "%DC"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string/jumbo v2, "%DD"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string/jumbo v2, "%DE"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string/jumbo v2, "%DF"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string/jumbo v2, "%E0"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string/jumbo v2, "%E1"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string/jumbo v2, "%E2"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string/jumbo v2, "%E3"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string/jumbo v2, "%E4"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string/jumbo v2, "%E5"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string/jumbo v2, "%E6"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string/jumbo v2, "%E7"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string/jumbo v2, "%E8"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string/jumbo v2, "%E9"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string/jumbo v2, "%EA"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string/jumbo v2, "%EB"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string/jumbo v2, "%EC"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string/jumbo v2, "%ED"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string/jumbo v2, "%EE"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string/jumbo v2, "%EF"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string/jumbo v2, "%F0"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string/jumbo v2, "%F1"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string/jumbo v2, "%F2"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string/jumbo v2, "%F3"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string/jumbo v2, "%F4"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string/jumbo v2, "%F5"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string/jumbo v2, "%F6"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string/jumbo v2, "%F7"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string/jumbo v2, "%F8"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string/jumbo v2, "%F9"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string/jumbo v2, "%FA"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string/jumbo v2, "%FB"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string/jumbo v2, "%FC"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string/jumbo v2, "%FD"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string/jumbo v2, "%FE"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string/jumbo v2, "%FF"

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->encodedChars:[Ljava/lang/String;

    .line 116
    new-array v0, v5, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->utf8Mask:[Z

    .line 135
    new-array v0, v5, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->contextDataMask:[Z

    .line 156
    sget-object v0, Lcom/adobe/mobile/Config$ApplicationType;->APPLICATION_TYPE_HANDHELD:Lcom/adobe/mobile/Config$ApplicationType;

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_appType:Lcom/adobe/mobile/Config$ApplicationType;

    .line 157
    sput-boolean v4, Lcom/adobe/mobile/StaticMethods;->_isWearable:Z

    .line 179
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->prefs:Landroid/content/SharedPreferences;

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_sharedPreferencesMutex:Ljava/lang/Object;

    .line 198
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->appID:Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_applicationIDMutex:Ljava/lang/Object;

    .line 220
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->appName:Ljava/lang/String;

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_applicationNameMutex:Ljava/lang/Object;

    .line 255
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->versionName:Ljava/lang/String;

    .line 256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_applicationVersionMutex:Ljava/lang/Object;

    .line 289
    const/4 v0, -0x1

    sput v0, Lcom/adobe/mobile/StaticMethods;->versionCode:I

    .line 290
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_applicationVersionCodeMutex:Ljava/lang/Object;

    .line 323
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->visitorID:Ljava/lang/String;

    .line 324
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_visitorIDMutex:Ljava/lang/Object;

    .line 339
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_userIdentifierMutex:Ljava/lang/Object;

    .line 354
    sput-boolean v4, Lcom/adobe/mobile/StaticMethods;->pushEnabled:Z

    .line 355
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_pushEnabledMutex:Ljava/lang/Object;

    .line 387
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->pushIdentifier:Ljava/lang/String;

    .line 388
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_pushIdentifierMutex:Ljava/lang/Object;

    .line 417
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->advertisingIdentifier:Ljava/lang/String;

    .line 418
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_advertisingIdentifierMutex:Ljava/lang/Object;

    .line 439
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->userAgent:Ljava/lang/String;

    .line 440
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_userAgentMutex:Ljava/lang/Object;

    .line 452
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->defaultData:Ljava/util/HashMap;

    .line 453
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_defaultDataMutex:Ljava/lang/Object;

    .line 471
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->resolution:Ljava/lang/String;

    .line 472
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_resolutionMutex:Ljava/lang/Object;

    .line 488
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->carrier:Ljava/lang/String;

    .line 489
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_carrierMutex:Ljava/lang/Object;

    .line 505
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->operatingSystem:Ljava/lang/String;

    .line 506
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_operatingSystemMutex:Ljava/lang/Object;

    .line 530
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->timestamp:Ljava/lang/String;

    .line 531
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_timestampMutex:Ljava/lang/Object;

    .line 556
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->mediaExecutor:Ljava/util/concurrent/ExecutorService;

    .line 557
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_mediaExecutorMutex:Ljava/lang/Object;

    .line 568
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->timedActionsExecutor:Ljava/util/concurrent/ExecutorService;

    .line 569
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_timedActionsExecutorMutex:Ljava/lang/Object;

    .line 580
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->sharedExecutor:Ljava/util/concurrent/ExecutorService;

    .line 581
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_sharedExecutorMutex:Ljava/lang/Object;

    .line 592
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->analyticsExecutor:Ljava/util/concurrent/ExecutorService;

    .line 593
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_analyticsExecutorMutex:Ljava/lang/Object;

    .line 604
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->messagesExecutor:Ljava/util/concurrent/ExecutorService;

    .line 605
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_messagesExecutorMutex:Ljava/lang/Object;

    .line 616
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->thirdPartyCallbacksExecutor:Ljava/util/concurrent/ExecutorService;

    .line 617
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_thirdPartyCallbacksExecutorMutex:Ljava/lang/Object;

    .line 627
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->messageImageCachingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 628
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_messageImageCachingExecutorMutex:Ljava/lang/Object;

    .line 639
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->audienceExecutor:Ljava/util/concurrent/ExecutorService;

    .line 640
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_audienceExecutorMutex:Ljava/lang/Object;

    .line 651
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->aid:Ljava/lang/String;

    .line 652
    sput-boolean v4, Lcom/adobe/mobile/StaticMethods;->_aidDone:Z

    .line 653
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_aidMutex:Ljava/lang/Object;

    .line 1019
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_contextDataKeyWhiteList:Ljava/util/Map;

    .line 1020
    sput v4, Lcom/adobe/mobile/StaticMethods;->_contextDataKeyWhiteListCount:I

    .line 1191
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->sharedContext:Landroid/content/Context;

    .line 1238
    sput-object v3, Lcom/adobe/mobile/StaticMethods;->_activity:Ljava/lang/ref/WeakReference;

    .line 1239
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_currentActivityMutex:Ljava/lang/Object;

    .line 1279
    const-string/jumbo v0, "000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F303132333435363738393A3B3C3D3E3F404142434445464748494A4B4C4D4E4F505152535455565758595A5B5C5D5E5F606162636465666768696A6B6C6D6E6F707172737475767778797A7B7C7D7E7F808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFF"

    .line 1295
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->BYTE_TO_HEX:[C

    .line 1279
    return-void

    .line 116
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 135
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method protected static URLEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 892
    if-nez p0, :cond_1

    move-object p0, v0

    .line 930
    :cond_0
    :goto_0
    return-object p0

    .line 897
    :cond_1
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 899
    array-length v4, v3

    move v1, v2

    .line 903
    :goto_1
    if-ge v1, v4, :cond_2

    sget-object v5, Lcom/adobe/mobile/StaticMethods;->utf8Mask:[Z

    aget-byte v6, v3, v1

    and-int/lit16 v6, v6, 0xff

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_2

    .line 904
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 909
    :cond_2
    if-eq v1, v4, :cond_0

    .line 914
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v6, v3

    shl-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 917
    if-lez v1, :cond_3

    .line 918
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v6, v3, v7, v1, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    :cond_3
    :goto_2
    if-ge v1, v4, :cond_4

    .line 923
    sget-object v6, Lcom/adobe/mobile/StaticMethods;->encodedChars:[Ljava/lang/String;

    aget-byte v7, v3, v1

    and-int/lit16 v7, v7, 0xff

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 927
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 928
    :catch_0
    move-exception v1

    .line 929
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UnsupportedEncodingException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v0

    .line 930
    goto :goto_0
.end method

.method private static addValueToHashMap(Ljava/lang/Object;Lcom/adobe/mobile/ContextData;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/adobe/mobile/ContextData;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1100
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 1105
    if-ge p3, v2, :cond_3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 1106
    :goto_1
    if-eqz v1, :cond_0

    .line 1110
    new-instance v0, Lcom/adobe/mobile/ContextData;

    invoke-direct {v0}, Lcom/adobe/mobile/ContextData;-><init>()V

    .line 1111
    invoke-virtual {p1, v1}, Lcom/adobe/mobile/ContextData;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1112
    invoke-virtual {p1, v1}, Lcom/adobe/mobile/ContextData;->get(Ljava/lang/String;)Lcom/adobe/mobile/ContextData;

    move-result-object v0

    .line 1115
    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-ne v2, p3, :cond_4

    .line 1117
    iput-object p0, v0, Lcom/adobe/mobile/ContextData;->value:Ljava/lang/Object;

    .line 1118
    invoke-virtual {p1, v1, v0}, Lcom/adobe/mobile/ContextData;->put(Ljava/lang/String;Lcom/adobe/mobile/ContextData;)V

    goto :goto_0

    .line 1105
    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 1121
    :cond_4
    invoke-virtual {p1, v1, v0}, Lcom/adobe/mobile/ContextData;->put(Ljava/lang/String;Lcom/adobe/mobile/ContextData;)V

    .line 1122
    add-int/lit8 v1, p3, 0x1

    invoke-static {p0, v0, p2, v1}, Lcom/adobe/mobile/StaticMethods;->addValueToHashMap(Ljava/lang/Object;Lcom/adobe/mobile/ContextData;Ljava/util/List;I)V

    goto :goto_0
.end method

.method protected static appendContextData(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 1347
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1391
    :cond_0
    :goto_0
    return-object p1

    .line 1350
    :cond_1
    const-string/jumbo v0, ".*(&c\\.(.*)&\\.c).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1351
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1352
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1356
    if-eqz v0, :cond_0

    .line 1360
    new-instance v4, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1361
    new-instance v5, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1362
    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_5

    aget-object v0, v6, v1

    .line 1363
    const-string/jumbo v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "="

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1364
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1362
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1366
    :cond_3
    const-string/jumbo v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1367
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1368
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1371
    :cond_4
    const-string/jumbo v8, "="

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1372
    array-length v8, v0

    if-ne v8, v11, :cond_2

    .line 1375
    aget-object v8, v0, v2

    invoke-static {v5, v8}, Lcom/adobe/mobile/StaticMethods;->contextDataStringPath(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1377
    const/4 v9, 0x1

    :try_start_0
    aget-object v0, v0, v9

    const-string/jumbo v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1378
    :catch_0
    move-exception v0

    .line 1379
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 1384
    :cond_5
    invoke-interface {v4, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1387
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1388
    const-string/jumbo v2, "c"

    invoke-static {v4}, Lcom/adobe/mobile/StaticMethods;->translateContextData(Ljava/util/Map;)Lcom/adobe/mobile/ContextData;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    invoke-static {v1, v0}, Lcom/adobe/mobile/StaticMethods;->serializeToQueryString(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 1390
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method protected static cleanContextDataDictionary(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 998
    if-nez p0, :cond_0

    .line 999
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1011
    :goto_0
    return-object v0

    .line 1002
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1004
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1005
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/mobile/StaticMethods;->cleanContextDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1006
    if-eqz v1, :cond_1

    .line 1007
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 1011
    goto :goto_0
.end method

.method protected static cleanContextDataKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v12, 0x2e

    const/4 v5, 0x0

    .line 1022
    if-nez p0, :cond_0

    move-object v0, v3

    .line 1096
    :goto_0
    return-object v0

    .line 1027
    :cond_0
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_contextDataKeyWhiteList:Ljava/util/Map;

    monitor-enter v1

    .line 1028
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->_contextDataKeyWhiteList:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1031
    if-eqz v0, :cond_1

    .line 1032
    monitor-exit v1

    goto :goto_0

    .line 1034
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1041
    :try_start_2
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1042
    array-length v0, v7

    new-array v8, v0, [B

    .line 1048
    array-length v9, v7

    move v6, v5

    move v0, v5

    move v1, v5

    :goto_1
    if-ge v6, v9, :cond_4

    aget-byte v2, v7, v6

    .line 1050
    if-ne v2, v12, :cond_3

    if-ne v1, v12, :cond_3

    .line 1048
    :cond_2
    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1

    .line 1053
    :cond_3
    sget-object v10, Lcom/adobe/mobile/StaticMethods;->contextDataMask:[Z

    and-int/lit16 v11, v2, 0xff

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_2

    .line 1055
    add-int/lit8 v1, v0, 0x1

    aput-byte v2, v8, v0

    move v0, v1

    move v1, v2

    .line 1056
    goto :goto_2

    .line 1061
    :cond_4
    if-nez v0, :cond_5

    move-object v0, v3

    .line 1062
    goto :goto_0

    .line 1066
    :cond_5
    const/4 v1, 0x0

    aget-byte v1, v8, v1

    if-ne v1, v12, :cond_6

    move v2, v4

    .line 1067
    :goto_3
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, v8, v1

    if-ne v1, v12, :cond_7

    move v1, v4

    .line 1068
    :goto_4
    sub-int/2addr v0, v1

    sub-int v1, v0, v2

    .line 1071
    if-gtz v1, :cond_8

    move-object v0, v3

    .line 1072
    goto :goto_0

    :cond_6
    move v2, v5

    .line 1066
    goto :goto_3

    :cond_7
    move v1, v5

    .line 1067
    goto :goto_4

    .line 1076
    :cond_8
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v0, v8, v2, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1083
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_contextDataKeyWhiteList:Ljava/util/Map;

    monitor-enter v1

    .line 1085
    :try_start_3
    sget v2, Lcom/adobe/mobile/StaticMethods;->_contextDataKeyWhiteListCount:I

    const/16 v3, 0xfa

    if-le v2, v3, :cond_9

    .line 1087
    sget-object v2, Lcom/adobe/mobile/StaticMethods;->_contextDataKeyWhiteList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1088
    const/4 v2, 0x0

    sput v2, Lcom/adobe/mobile/StaticMethods;->_contextDataKeyWhiteListCount:I

    .line 1092
    :cond_9
    sget-object v2, Lcom/adobe/mobile/StaticMethods;->_contextDataKeyWhiteList:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    sget v2, Lcom/adobe/mobile/StaticMethods;->_contextDataKeyWhiteListCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/adobe/mobile/StaticMethods;->_contextDataKeyWhiteListCount:I

    .line 1094
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    const-string/jumbo v1, "Analytics - Unable to clean context data key (%s)"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 1079
    goto/16 :goto_0
.end method

.method protected static contextDataStringPath(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1397
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1398
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1400
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static expandTokens(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1256
    .line 1259
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v2, p0

    :goto_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1260
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1267
    :goto_1
    return-object v0

    .line 1263
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p0

    .line 1264
    :goto_2
    const-string/jumbo v2, "Unable to expand tokens (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1263
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2
.end method

.method private static generateAID()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 769
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 770
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 772
    const-string/jumbo v1, "^[89A-F]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 773
    const-string/jumbo v2, "^[4-9A-F]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 774
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 775
    const/16 v3, 0x20

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 777
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 778
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 779
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getAID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 655
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_aidMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 656
    :try_start_0
    sget-boolean v0, Lcom/adobe/mobile/StaticMethods;->_aidDone:Z

    if-nez v0, :cond_2

    .line 657
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/mobile/StaticMethods;->_aidDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "ADOBEMOBILE_STOREDDEFAULTS_IGNORE_AID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 660
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "ADOBEMOBILE_STOREDDEFAULTS_AID"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/adobe/mobile/StaticMethods;->aid:Ljava/lang/String;

    .line 665
    if-nez v0, :cond_0

    sget-object v2, Lcom/adobe/mobile/StaticMethods;->aid:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/mobile/MobileConfig;->getVisitorIdServiceEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 666
    :cond_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->retrieveAIDFromVisitorIDService()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->aid:Ljava/lang/String;

    .line 667
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 669
    sget-object v2, Lcom/adobe/mobile/StaticMethods;->aid:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 671
    const-string/jumbo v2, "ADOBEMOBILE_STOREDDEFAULTS_AID"

    sget-object v3, Lcom/adobe/mobile/StaticMethods;->aid:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 672
    const-string/jumbo v2, "ADOBEMOBILE_STOREDDEFAULTS_IGNORE_AID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 677
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 679
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->aid:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/mobile/StaticMethods;->syncAIDIfNeeded(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 687
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->aid:Ljava/lang/String;

    return-object v0

    .line 674
    :cond_3
    :try_start_3
    const-string/jumbo v2, "ADOBEMOBILE_STOREDDEFAULTS_IGNORE_AID"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    :try_start_4
    const-string/jumbo v2, "Config - Error getting AID. (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method protected static getAdvertisingIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 420
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_advertisingIdentifierMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->advertisingIdentifier:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getAnalyticsExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 595
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_analyticsExecutorMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 596
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->analyticsExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 597
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->analyticsExecutor:Ljava/util/concurrent/ExecutorService;

    .line 600
    :cond_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->analyticsExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-exit v1

    return-object v0

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1178
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method protected static getApplicationID()Ljava/lang/String;
    .locals 7

    .prologue
    .line 201
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_applicationIDMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->appID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 204
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getApplicationVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getApplicationVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 205
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getApplicationVersionCode()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getApplicationVersionCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->appID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    const-string/jumbo v2, "ADOBEMOBILE_STOREDDEFAULTS_APPID"

    sget-object v3, Lcom/adobe/mobile/StaticMethods;->appID:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_0
    :goto_3
    :try_start_2
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->appID:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 203
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 204
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    .line 205
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const-string/jumbo v2, "Config - Unable to set Application ID in preferences (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static getApplicationName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 223
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_applicationNameMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->appName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 225
    const-string/jumbo v0, ""

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->appName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_3

    .line 229
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 230
    if-eqz v2, :cond_2

    .line 231
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 232
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/adobe/mobile/StaticMethods;->appName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    :cond_0
    :goto_1
    :try_start_2
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->appName:Ljava/lang/String;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    .line 232
    :cond_1
    :try_start_3
    const-string/jumbo v0, ""

    goto :goto_0

    .line 235
    :cond_2
    const-string/jumbo v0, "Analytics - ApplicationInfo was null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    const-string/jumbo v0, ""

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->appName:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    :try_start_4
    const-string/jumbo v2, "Analytics - PackageManager couldn\'t find application name (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    const-string/jumbo v0, ""

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->appName:Ljava/lang/String;

    goto :goto_1

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 240
    :cond_3
    :try_start_5
    const-string/jumbo v0, "Analytics - PackageManager was null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    const-string/jumbo v0, ""

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->appName:Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 246
    :catch_1
    move-exception v0

    .line 247
    :try_start_6
    const-string/jumbo v2, "Config - Unable to get package to pull application name. (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    const-string/jumbo v0, ""

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->appName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method protected static getApplicationType()Lcom/adobe/mobile/Config$ApplicationType;
    .locals 1

    .prologue
    .line 802
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->_appType:Lcom/adobe/mobile/Config$ApplicationType;

    return-object v0
.end method

.method protected static getApplicationVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 258
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_applicationVersionMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->versionName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 260
    const-string/jumbo v0, ""

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_3

    .line 264
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_2

    .line 266
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/adobe/mobile/StaticMethods;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :cond_0
    :goto_1
    :try_start_2
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->versionName:Ljava/lang/String;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    .line 266
    :cond_1
    :try_start_3
    const-string/jumbo v0, ""

    goto :goto_0

    .line 269
    :cond_2
    const-string/jumbo v0, "Analytics - PackageInfo was null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    const-string/jumbo v0, ""

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->versionName:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    :try_start_4
    const-string/jumbo v2, "Analytics - PackageManager couldn\'t find application version (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    const-string/jumbo v0, ""

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->versionName:Ljava/lang/String;

    goto :goto_1

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 274
    :cond_3
    :try_start_5
    const-string/jumbo v0, "Analytics - PackageManager was null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    const-string/jumbo v0, ""

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->versionName:Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 280
    :catch_1
    move-exception v0

    .line 281
    :try_start_6
    const-string/jumbo v2, "Config - Unable to get package to pull application version. (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    const-string/jumbo v0, ""

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->versionName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method protected static getApplicationVersionCode()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 292
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_applicationVersionCodeMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    sget v2, Lcom/adobe/mobile/StaticMethods;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 295
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 296
    if-eqz v2, :cond_3

    .line 297
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 298
    if-eqz v2, :cond_2

    .line 299
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lez v3, :cond_0

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    :cond_0
    sput v0, Lcom/adobe/mobile/StaticMethods;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :cond_1
    :goto_0
    :try_start_2
    sget v0, Lcom/adobe/mobile/StaticMethods;->versionCode:I

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 302
    :cond_2
    :try_start_3
    const-string/jumbo v0, "Analytics - PackageInfo was null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    const/4 v0, 0x0

    sput v0, Lcom/adobe/mobile/StaticMethods;->versionCode:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    :try_start_4
    const-string/jumbo v2, "Analytics - PackageManager couldn\'t find application version code (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    const/4 v0, 0x0

    sput v0, Lcom/adobe/mobile/StaticMethods;->versionCode:I

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 307
    :cond_3
    :try_start_5
    const-string/jumbo v0, "Analytics - PackageManager was null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    const/4 v0, 0x0

    sput v0, Lcom/adobe/mobile/StaticMethods;->versionCode:I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 314
    :catch_1
    move-exception v0

    .line 315
    :try_start_6
    const-string/jumbo v2, "Config - Unable to get package to pull application version code. (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    const/4 v0, 0x0

    sput v0, Lcom/adobe/mobile/StaticMethods;->versionCode:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method protected static getAudienceExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 642
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_audienceExecutorMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->audienceExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 644
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->audienceExecutor:Ljava/util/concurrent/ExecutorService;

    .line 647
    :cond_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->audienceExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-exit v1

    return-object v0

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getCacheDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 548
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 553
    :goto_0
    return-object v0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    const-string/jumbo v1, "Config - Error getting cache directory. (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getCarrier()Ljava/lang/String;
    .locals 5

    .prologue
    .line 491
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_carrierMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 492
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->carrier:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 494
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 495
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->carrier:Ljava/lang/String;
    :try_end_1
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->carrier:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    const-string/jumbo v2, "Config - Error getting device carrier. (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected static getCurrentActivity()Landroid/app/Activity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/mobile/StaticMethods$NullActivityException;
        }
    .end annotation

    .prologue
    .line 1247
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_currentActivityMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1248
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->_activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/mobile/StaticMethods;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1249
    :cond_0
    new-instance v0, Lcom/adobe/mobile/StaticMethods$NullActivityException;

    const-string/jumbo v2, "Message - No Current Activity (Messages must have a reference to the current activity to work properly)"

    invoke-direct {v0, v2}, Lcom/adobe/mobile/StaticMethods$NullActivityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1251
    :cond_1
    :try_start_1
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method protected static getCurrentOrientation()I
    .locals 1

    .prologue
    .line 1272
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Lcom/adobe/mobile/StaticMethods$NullActivityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    :goto_0
    return v0

    .line 1274
    :catch_0
    move-exception v0

    .line 1275
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected static getDebugLogging()Z
    .locals 1

    .prologue
    .line 792
    sget-boolean v0, Lcom/adobe/mobile/StaticMethods;->_debugLogging:Z

    return v0
.end method

.method protected static getDefaultAcceptLanguage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1154
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1160
    if-nez v1, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return-object v0

    .line 1155
    :catch_0
    move-exception v1

    .line 1156
    const-string/jumbo v2, "Config - Error getting application resources for default accepted language. (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1164
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1165
    if-eqz v1, :cond_0

    .line 1169
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1170
    if-eqz v1, :cond_0

    .line 1174
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getDefaultData()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_defaultDataMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->defaultData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->defaultData:Ljava/util/HashMap;

    .line 458
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->defaultData:Ljava/util/HashMap;

    const-string/jumbo v2, "a.DeviceName"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->defaultData:Ljava/util/HashMap;

    const-string/jumbo v2, "a.Resolution"

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getResolution()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->defaultData:Ljava/util/HashMap;

    const-string/jumbo v2, "a.OSVersion"

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getOperatingSystem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->defaultData:Ljava/util/HashMap;

    const-string/jumbo v2, "a.CarrierName"

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->defaultData:Ljava/util/HashMap;

    const-string/jumbo v2, "a.AppID"

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getApplicationID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v2, Lcom/adobe/mobile/StaticMethods;->defaultData:Ljava/util/HashMap;

    const-string/jumbo v3, "a.RunMode"

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->isWearableApp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Extension"

    :goto_0
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->defaultData:Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 463
    :cond_1
    const-string/jumbo v0, "Application"

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getDefaultUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 442
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_userAgentMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mozilla/5.0 (Linux; U; Android "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getAndroidVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 445
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getDefaultAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " Build/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->userAgent:Ljava/lang/String;

    .line 448
    :cond_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->userAgent:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getDeviceLocale()Ljava/util/Locale;
    .locals 4

    .prologue
    .line 1408
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1414
    if-nez v0, :cond_0

    .line 1415
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1423
    :goto_0
    return-object v0

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    const-string/jumbo v1, "Config - Error getting application resources for device locale. (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1411
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_0

    .line 1418
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1419
    if-nez v0, :cond_1

    .line 1420
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_0

    .line 1423
    :cond_1
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_0
.end method

.method protected static getHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1298
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return-object v0

    .line 1304
    :cond_1
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1310
    array-length v4, v3

    .line 1311
    shl-int/lit8 v0, v4, 0x1

    new-array v5, v0, [C

    move v0, v2

    .line 1315
    :goto_1
    if-ge v0, v4, :cond_2

    .line 1316
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x1

    .line 1317
    add-int/lit8 v6, v2, 0x1

    sget-object v7, Lcom/adobe/mobile/StaticMethods;->BYTE_TO_HEX:[C

    add-int/lit8 v8, v0, 0x1

    aget-char v0, v7, v0

    aput-char v0, v5, v2

    .line 1318
    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lcom/adobe/mobile/StaticMethods;->BYTE_TO_HEX:[C

    aget-char v0, v0, v8

    aput-char v0, v5, v6

    move v0, v1

    goto :goto_1

    .line 1306
    :catch_0
    move-exception v1

    .line 1307
    const-string/jumbo v3, "Failed to get hex from string (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1320
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method protected static getIso8601Date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1427
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/adobe/mobile/StaticMethods;->getIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getIso8601Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1431
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ssZZZ"

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getDeviceLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1432
    if-eqz p0, :cond_0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method protected static getMediaExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 559
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_mediaExecutorMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 560
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->mediaExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 561
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->mediaExecutor:Ljava/util/concurrent/ExecutorService;

    .line 564
    :cond_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->mediaExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-exit v1

    return-object v0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getMessageImageCachingExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 630
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_messageImageCachingExecutorMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 631
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->messageImageCachingExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 632
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->messageImageCachingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 635
    :cond_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->messageImageCachingExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-exit v1

    return-object v0

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getMessagesExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 607
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_messagesExecutorMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 608
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->messagesExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 609
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->messagesExecutor:Ljava/util/concurrent/ExecutorService;

    .line 612
    :cond_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->messagesExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-exit v1

    return-object v0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getOperatingSystem()Ljava/lang/String;
    .locals 5

    .prologue
    .line 508
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_operatingSystemMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->operatingSystem:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Android "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getAndroidVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->operatingSystem:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 514
    const-string/jumbo v2, "ADOBEMOBILE_STOREDDEFAULTS_OS"

    sget-object v3, Lcom/adobe/mobile/StaticMethods;->operatingSystem:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 515
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->operatingSystem:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    const-string/jumbo v2, "Config - Unable to set OS version in preferences (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected static getPushIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_pushIdentifierMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->pushIdentifier:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getResolution()Ljava/lang/String;
    .locals 5

    .prologue
    .line 474
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_resolutionMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->resolution:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 477
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->resolution:Ljava/lang/String;
    :try_end_1
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->resolution:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    const-string/jumbo v2, "Config - Error getting device resolution. (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected static getSharedContext()Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/mobile/StaticMethods$NullContextException;
        }
    .end annotation

    .prologue
    .line 1193
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->sharedContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1194
    new-instance v0, Lcom/adobe/mobile/StaticMethods$NullContextException;

    const-string/jumbo v1, "Config - No Application Context (Application context must be set prior to calling any library functions.)"

    invoke-direct {v0, v1}, Lcom/adobe/mobile/StaticMethods$NullContextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1197
    :cond_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->sharedContext:Landroid/content/Context;

    return-object v0
.end method

.method protected static getSharedExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 583
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_sharedExecutorMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 584
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->sharedExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 585
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->sharedExecutor:Ljava/util/concurrent/ExecutorService;

    .line 588
    :cond_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->sharedExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-exit v1

    return-object v0

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/mobile/StaticMethods$NullContextException;
        }
    .end annotation

    .prologue
    .line 182
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_sharedPreferencesMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "APP_MEASUREMENT_CACHE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->prefs:Landroid/content/SharedPreferences;

    .line 185
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 186
    const-string/jumbo v0, "Config - No SharedPreferences available"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :cond_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 191
    new-instance v0, Lcom/adobe/mobile/StaticMethods$NullContextException;

    const-string/jumbo v2, "Config - No SharedPreferences available"

    invoke-direct {v0, v2}, Lcom/adobe/mobile/StaticMethods$NullContextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 194
    :cond_1
    :try_start_1
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->prefs:Landroid/content/SharedPreferences;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method protected static getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/mobile/StaticMethods$NullContextException;
        }
    .end annotation

    .prologue
    .line 1182
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1183
    if-nez v0, :cond_0

    .line 1184
    new-instance v0, Lcom/adobe/mobile/StaticMethods$NullContextException;

    const-string/jumbo v1, "Config - Unable to create an instance of a SharedPreferences Editor"

    invoke-direct {v0, v1}, Lcom/adobe/mobile/StaticMethods$NullContextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_0
    return-object v0
.end method

.method protected static getThirdPartyCallbacksExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 619
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_thirdPartyCallbacksExecutorMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 620
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->thirdPartyCallbacksExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 621
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->thirdPartyCallbacksExecutor:Ljava/util/concurrent/ExecutorService;

    .line 623
    :cond_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->thirdPartyCallbacksExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-exit v1

    return-object v0

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getTimeSince1970()J
    .locals 4

    .prologue
    .line 1127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected static getTimeSinceLaunch()J
    .locals 4

    .prologue
    .line 1211
    sget-wide v0, Lcom/adobe/mobile/Lifecycle;->sessionStartTime:J

    .line 1212
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getTimeSince1970()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 1215
    const-wide/32 v2, 0x93a80

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getTimedActionsExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 571
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_timedActionsExecutorMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 572
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->timedActionsExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 573
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->timedActionsExecutor:Ljava/util/concurrent/ExecutorService;

    .line 576
    :cond_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->timedActionsExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-exit v1

    return-object v0

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getTimestampString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 533
    sget-object v7, Lcom/adobe/mobile/StaticMethods;->_timestampMutex:Ljava/lang/Object;

    monitor-enter v7

    .line 534
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->timestamp:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 536
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 537
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "00/00/0000 00:00:00 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 539
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v9, 0xb

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    const/16 v10, 0xc

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x3c

    const/16 v10, 0xd

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v9, v10

    mul-int/lit16 v9, v9, 0x3e8

    const/16 v10, 0xe

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v9

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->timestamp:Ljava/lang/String;

    .line 542
    :cond_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->timestamp:Ljava/lang/String;

    monitor-exit v7

    return-object v0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getVisitorID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 326
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_visitorIDMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->visitorID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 329
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "APP_MEASUREMENT_VISITOR_ID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->visitorID:Ljava/lang/String;
    :try_end_1
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->visitorID:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    const-string/jumbo v2, "Config - Unable to pull visitorID from shared preferences. (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected static hexToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x10

    const/4 v2, 0x0

    .line 1324
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1343
    :goto_0
    return-object v0

    .line 1328
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1329
    div-int/lit8 v0, v3, 0x2

    new-array v4, v0, [B

    move v0, v2

    .line 1330
    :goto_1
    if-ge v0, v3, :cond_2

    .line 1331
    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v0, 0x1

    .line 1332
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1330
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1337
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v4, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1339
    :catch_0
    move-exception v0

    .line 1340
    const-string/jumbo v3, "Failed to get string from hex (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected static isPushEnabled()Z
    .locals 5

    .prologue
    .line 357
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_pushEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "ADBMOBILE_KEY_PUSH_ENABLED"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/adobe/mobile/StaticMethods;->pushEnabled:Z
    :try_end_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    sget-boolean v0, Lcom/adobe/mobile/StaticMethods;->pushEnabled:Z

    return v0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    :try_start_2
    const-string/jumbo v2, "Config - Unable to pull push status from shared preferences. (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected static isWearableApp()Z
    .locals 1

    .prologue
    .line 806
    sget-boolean v0, Lcom/adobe/mobile/StaticMethods;->_isWearable:Z

    return v0
.end method

.method protected static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 875
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 877
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 879
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 884
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 882
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected static varargs logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 960
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ADBMobile Debug : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 963
    const-string/jumbo v1, "ADBMobile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    const-string/jumbo v0, "ADBMobile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADBMobile Debug : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static varargs logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 938
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ADBMobile Error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 940
    const-string/jumbo v1, "ADBMobile"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    const-string/jumbo v0, "ADBMobile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADBMobile Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static varargs logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 948
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ADBMobile Warning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 951
    const-string/jumbo v1, "ADBMobile"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    const-string/jumbo v0, "ADBMobile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADBMobile Warning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static mapFromJson(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1220
    if-nez p0, :cond_0

    .line 1221
    const/4 v0, 0x0

    .line 1235
    :goto_0
    return-object v0

    .line 1225
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 1226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1227
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1228
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1230
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    const-string/jumbo v3, "Problem parsing json data (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1235
    goto :goto_0
.end method

.method protected static reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1437
    sput-object v2, Lcom/adobe/mobile/StaticMethods;->appID:Ljava/lang/String;

    .line 1438
    sput-object v2, Lcom/adobe/mobile/StaticMethods;->appName:Ljava/lang/String;

    .line 1439
    sput-object v2, Lcom/adobe/mobile/StaticMethods;->visitorID:Ljava/lang/String;

    .line 1440
    sput-object v2, Lcom/adobe/mobile/StaticMethods;->userAgent:Ljava/lang/String;

    .line 1441
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_defaultDataMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1442
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/adobe/mobile/StaticMethods;->defaultData:Ljava/util/HashMap;

    .line 1443
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    sput-object v2, Lcom/adobe/mobile/StaticMethods;->resolution:Ljava/lang/String;

    .line 1445
    const/4 v0, -0x1

    sput v0, Lcom/adobe/mobile/StaticMethods;->versionCode:I

    .line 1446
    sput-object v2, Lcom/adobe/mobile/StaticMethods;->versionName:Ljava/lang/String;

    .line 1447
    sput-object v2, Lcom/adobe/mobile/StaticMethods;->carrier:Ljava/lang/String;

    .line 1448
    sput-object v2, Lcom/adobe/mobile/StaticMethods;->operatingSystem:Ljava/lang/String;

    .line 1449
    sput-object v2, Lcom/adobe/mobile/StaticMethods;->aid:Ljava/lang/String;

    .line 1450
    sput-boolean v3, Lcom/adobe/mobile/StaticMethods;->_aidDone:Z

    .line 1451
    sput-object v2, Lcom/adobe/mobile/StaticMethods;->sharedContext:Landroid/content/Context;

    .line 1452
    sput-object v2, Lcom/adobe/mobile/StaticMethods;->prefs:Landroid/content/SharedPreferences;

    .line 1453
    sput-object v2, Lcom/adobe/mobile/StaticMethods;->_activity:Ljava/lang/ref/WeakReference;

    .line 1454
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->_contextDataKeyWhiteList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1455
    sput v3, Lcom/adobe/mobile/StaticMethods;->_contextDataKeyWhiteListCount:I

    .line 1456
    sget-object v0, Lcom/adobe/mobile/Config$ApplicationType;->APPLICATION_TYPE_HANDHELD:Lcom/adobe/mobile/Config$ApplicationType;

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_appType:Lcom/adobe/mobile/Config$ApplicationType;

    .line 1457
    sput-boolean v3, Lcom/adobe/mobile/StaticMethods;->_isWearable:Z

    .line 1458
    return-void

    .line 1443
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static retrieveAIDFromVisitorIDService()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 728
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/MobileConfig;->getSSL()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "https"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    const-string/jumbo v0, "://"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/MobileConfig;->getTrackingServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const-string/jumbo v0, "/id"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/MobileConfig;->getVisitorIdServiceEnabled()Z

    move-result v3

    .line 735
    if-eqz v3, :cond_0

    .line 736
    invoke-static {}, Lcom/adobe/mobile/VisitorIDService;->sharedInstance()Lcom/adobe/mobile/VisitorIDService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/VisitorIDService;->getAnalyticsIDRequestParameterString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    :cond_0
    const-string/jumbo v0, "Analytics ID - Sending Analytics ID call(%s)"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v0, v4}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f4

    const-string/jumbo v4, "Analytics ID"

    invoke-static {v0, v1, v2, v4}, Lcom/adobe/mobile/RequestHandler;->retrieveData(Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)[B

    move-result-object v0

    .line 743
    if-eqz v0, :cond_4

    .line 745
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 746
    const-string/jumbo v0, "id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 757
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x21

    if-eq v2, v4, :cond_2

    .line 758
    :cond_1
    if-eqz v3, :cond_5

    move-object v0, v1

    .line 765
    :cond_2
    :goto_2
    return-object v0

    .line 728
    :cond_3
    const-string/jumbo v0, "http"

    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    const-string/jumbo v2, "Analytics ID - Unable to decode /id response(%s)"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v4}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 753
    goto :goto_1

    .line 749
    :catch_1
    move-exception v0

    .line 750
    if-nez v3, :cond_4

    .line 751
    const-string/jumbo v2, "Analytics ID - Unable to parse /id response(%s)"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v4}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 762
    :cond_5
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->generateAID()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private static serializeKeyValuePair(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 853
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/adobe/mobile/ContextData;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 861
    :cond_2
    const-string/jumbo v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    const-string/jumbo v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 866
    check-cast p1, Ljava/util/List;

    const-string/jumbo v0, ","

    invoke-static {p1, v0}, Lcom/adobe/mobile/StaticMethods;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/mobile/StaticMethods;->URLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 868
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/mobile/StaticMethods;->URLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected static serializeToQueryString(Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 814
    if-nez p0, :cond_1

    .line 849
    :cond_0
    return-void

    .line 818
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 819
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/mobile/StaticMethods;->URLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 822
    if-eqz v1, :cond_2

    .line 826
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 829
    instance-of v3, v0, Lcom/adobe/mobile/ContextData;

    if-eqz v3, :cond_4

    .line 830
    check-cast v0, Lcom/adobe/mobile/ContextData;

    .line 832
    iget-object v3, v0, Lcom/adobe/mobile/ContextData;->value:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 833
    iget-object v3, v0, Lcom/adobe/mobile/ContextData;->value:Ljava/lang/Object;

    invoke-static {v1, v3, p1}, Lcom/adobe/mobile/StaticMethods;->serializeKeyValuePair(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 837
    :cond_3
    iget-object v3, v0, Lcom/adobe/mobile/ContextData;->contextData:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/adobe/mobile/ContextData;->contextData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 838
    const-string/jumbo v3, "&"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    const-string/jumbo v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    iget-object v0, v0, Lcom/adobe/mobile/ContextData;->contextData:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/adobe/mobile/StaticMethods;->serializeToQueryString(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 842
    const-string/jumbo v0, "&."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 846
    :cond_4
    invoke-static {v1, v0, p1}, Lcom/adobe/mobile/StaticMethods;->serializeKeyValuePair(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method protected static setAdvertisingIdentifier(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 426
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 430
    :cond_0
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_advertisingIdentifierMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 431
    :try_start_0
    sput-object p0, Lcom/adobe/mobile/StaticMethods;->advertisingIdentifier:Ljava/lang/String;

    .line 432
    invoke-static {p0}, Lcom/adobe/mobile/WearableFunctionBridge;->syncAdvertisingIdentifierToWearable(Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/adobe/mobile/VisitorIDService;->sharedInstance()Lcom/adobe/mobile/VisitorIDService;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/adobe/mobile/StaticMethods$4;

    invoke-direct {v3, p0}, Lcom/adobe/mobile/StaticMethods$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/adobe/mobile/VisitorIDService;->idSync(Ljava/util/Map;Ljava/util/Map;)V

    .line 436
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static setApplicationType(Lcom/adobe/mobile/Config$ApplicationType;)V
    .locals 2

    .prologue
    .line 797
    sput-object p0, Lcom/adobe/mobile/StaticMethods;->_appType:Lcom/adobe/mobile/Config$ApplicationType;

    .line 798
    sget-object v0, Lcom/adobe/mobile/StaticMethods;->_appType:Lcom/adobe/mobile/Config$ApplicationType;

    sget-object v1, Lcom/adobe/mobile/Config$ApplicationType;->APPLICATION_TYPE_WEARABLE:Lcom/adobe/mobile/Config$ApplicationType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/mobile/StaticMethods;->_isWearable:Z

    .line 799
    return-void

    .line 798
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static setCurrentActivity(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 1241
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_currentActivityMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1242
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->_activity:Ljava/lang/ref/WeakReference;

    .line 1243
    monitor-exit v1

    .line 1244
    return-void

    .line 1243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static setDebugLogging(Z)V
    .locals 0

    .prologue
    .line 788
    sput-boolean p0, Lcom/adobe/mobile/StaticMethods;->_debugLogging:Z

    .line 789
    return-void
.end method

.method protected static setPushEnabled(Z)V
    .locals 5

    .prologue
    .line 369
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_pushEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 372
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 373
    const-string/jumbo v2, "ADBMOBILE_KEY_PUSH_ENABLED"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 374
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    sput-boolean p0, Lcom/adobe/mobile/StaticMethods;->pushEnabled:Z

    .line 380
    invoke-static {p0}, Lcom/adobe/mobile/WearableFunctionBridge;->syncPushEnabledToWearable(Z)V
    :try_end_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 385
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    const-string/jumbo v2, "Config - Unable to set pushEnabled shared preferences. (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected static setPushIdentifier(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 396
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_pushIdentifierMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    if-nez p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->isPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/mobile/StaticMethods;->setPushEnabled(Z)V

    .line 399
    const-string/jumbo v0, "Push"

    new-instance v2, Lcom/adobe/mobile/StaticMethods$1;

    invoke-direct {v2}, Lcom/adobe/mobile/StaticMethods$1;-><init>()V

    .line 400
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getTimeSince1970()J

    move-result-wide v4

    .line 399
    invoke-static {v0, v2, v4, v5}, Lcom/adobe/mobile/AnalyticsTrackInternal;->trackInternal(Ljava/lang/String;Ljava/util/Map;J)V

    .line 403
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->isPushEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adobe/mobile/StaticMethods;->setPushEnabled(Z)V

    .line 405
    const-string/jumbo v0, "Push"

    new-instance v2, Lcom/adobe/mobile/StaticMethods$2;

    invoke-direct {v2}, Lcom/adobe/mobile/StaticMethods$2;-><init>()V

    .line 406
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getTimeSince1970()J

    move-result-wide v4

    .line 405
    invoke-static {v0, v2, v4, v5}, Lcom/adobe/mobile/AnalyticsTrackInternal;->trackInternal(Ljava/lang/String;Ljava/util/Map;J)V

    .line 409
    :cond_1
    sput-object p0, Lcom/adobe/mobile/StaticMethods;->pushIdentifier:Ljava/lang/String;

    .line 411
    invoke-static {}, Lcom/adobe/mobile/VisitorIDService;->sharedInstance()Lcom/adobe/mobile/VisitorIDService;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/adobe/mobile/StaticMethods$3;

    invoke-direct {v3, p0}, Lcom/adobe/mobile/StaticMethods$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/adobe/mobile/VisitorIDService;->idSync(Ljava/util/Map;Ljava/util/Map;)V

    .line 414
    monitor-exit v1

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static setSharedContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1201
    if-eqz p0, :cond_0

    .line 1202
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1203
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/StaticMethods;->sharedContext:Landroid/content/Context;

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1205
    :cond_1
    sput-object p0, Lcom/adobe/mobile/StaticMethods;->sharedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method protected static setVisitorID(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 341
    sget-object v1, Lcom/adobe/mobile/StaticMethods;->_userIdentifierMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_0
    sput-object p0, Lcom/adobe/mobile/StaticMethods;->visitorID:Ljava/lang/String;

    .line 343
    invoke-static {p0}, Lcom/adobe/mobile/WearableFunctionBridge;->syncVisitorIDToWearable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 346
    const-string/jumbo v2, "APP_MEASUREMENT_VISITOR_ID"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 347
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 352
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    const-string/jumbo v2, "Config - Error updating visitorID. (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static syncAIDIfNeeded(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 693
    if-nez p0, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/MobileConfig;->getVisitorIdServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "ADOBEMOBILE_STOREDDEFAULTS_AID_SYNCED"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 709
    :goto_1
    if-nez v0, :cond_0

    .line 710
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 711
    const-string/jumbo v2, "AVID"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    invoke-static {}, Lcom/adobe/mobile/VisitorIDService;->sharedInstance()Lcom/adobe/mobile/VisitorIDService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adobe/mobile/VisitorIDService;->idSync(Ljava/util/Map;)V

    .line 714
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 715
    const-string/jumbo v2, "ADOBEMOBILE_STOREDDEFAULTS_AID_SYNCED"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 716
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    const-string/jumbo v2, "Visitor ID - Null context when attempting to persist visitor ID sync status (%s)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 705
    :catch_1
    move-exception v0

    .line 706
    const-string/jumbo v2, "Visitor ID - Null context when attempting to determine visitor ID sync status (%s)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1
.end method

.method protected static translateContextData(Ljava/util/Map;)Lcom/adobe/mobile/ContextData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/adobe/mobile/ContextData;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 977
    new-instance v4, Lcom/adobe/mobile/ContextData;

    invoke-direct {v4}, Lcom/adobe/mobile/ContextData;-><init>()V

    .line 979
    invoke-static {p0}, Lcom/adobe/mobile/StaticMethods;->cleanContextDataDictionary(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 980
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 982
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 984
    :goto_1
    const/16 v7, 0x2e

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ltz v7, :cond_0

    .line 985
    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    add-int/lit8 v2, v7, 0x1

    goto :goto_1

    .line 988
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4, v6, v3}, Lcom/adobe/mobile/StaticMethods;->addValueToHashMap(Ljava/lang/Object;Lcom/adobe/mobile/ContextData;Ljava/util/List;I)V

    goto :goto_0

    .line 993
    :cond_1
    return-object v4
.end method

.method protected static updateLastKnownTimestamp(Ljava/lang/Long;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1132
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v0

    .line 1133
    if-nez v0, :cond_1

    .line 1134
    const-string/jumbo v0, "Config - Lost config instance"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1138
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/mobile/MobileConfig;->getOfflineTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1144
    const-string/jumbo v1, "ADBLastKnownTimestampKey"

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    const-string/jumbo v1, "Config - Error while updating last known timestamp. (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
