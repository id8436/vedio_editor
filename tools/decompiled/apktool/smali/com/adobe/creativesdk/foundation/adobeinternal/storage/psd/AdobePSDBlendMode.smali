.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;
.super Ljava/lang/Enum;
.source "AdobePSDBlendMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeColorBurn:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeColorDodge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeDarken:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeDarkerColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeDifference:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeDissolve:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeDivide:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeExclusion:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeHardLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeHardMix:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeHue:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeLighten:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeLighterColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeLinearBurn:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeLinearDodge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeLinearLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeLuminosity:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeMultiply:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeNormal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeOverlay:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModePassThrough:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModePinLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeSaturation:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeScreen:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeSoftLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeSubtract:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

.field public static final enum AdobePSDBlendModeVividLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeNormal"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeNormal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 25
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeDissolve"

    invoke-direct {v0, v1, v5, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeDissolve:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 27
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeDarken"

    invoke-direct {v0, v1, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeDarken:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 29
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeMultiply"

    invoke-direct {v0, v1, v7, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeMultiply:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeColorBurn"

    invoke-direct {v0, v1, v8, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeColorBurn:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 33
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeLinearBurn"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeLinearBurn:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 35
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeDarkerColor"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeDarkerColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 37
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeLighten"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeLighten:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 39
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeScreen"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeScreen:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 41
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeColorDodge"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeColorDodge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 43
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeLinearDodge"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeLinearDodge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 45
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeLighterColor"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeLighterColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 47
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeOverlay"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeOverlay:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 49
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeSoftLight"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeSoftLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 51
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeHardLight"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeHardLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 53
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeVividLight"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeVividLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 55
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeLinearLight"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeLinearLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 57
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModePinLight"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModePinLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 59
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeHardMix"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeHardMix:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 61
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeDifference"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeDifference:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 63
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeExclusion"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeExclusion:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 65
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeSubtract"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeSubtract:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 67
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeDivide"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeDivide:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 69
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeHue"

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeHue:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 71
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeSaturation"

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeSaturation:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 73
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeColor"

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 75
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeLuminosity"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeLuminosity:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 78
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModePassThrough"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModePassThrough:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 80
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    const-string/jumbo v1, "AdobePSDBlendModeUnknown"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 21
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeNormal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeDissolve:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeDarken:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeMultiply:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeColorBurn:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeLinearBurn:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeDarkerColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeLighten:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeScreen:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeColorDodge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeLinearDodge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeLighterColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeOverlay:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeSoftLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeHardLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeVividLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeLinearLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModePinLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeHardMix:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeDifference:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeExclusion:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeSubtract:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeDivide:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeHue:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeSaturation:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeLuminosity:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModePassThrough:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->value:I

    .line 101
    return-void
.end method

.method public static getEnumForIndex(I)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;
    .locals 5

    .prologue
    .line 89
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 91
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->value()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 94
    :goto_1
    return-object v0

    .line 89
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
