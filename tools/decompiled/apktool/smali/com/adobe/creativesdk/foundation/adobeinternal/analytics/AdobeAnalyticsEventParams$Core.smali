.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;
.super Ljava/lang/Enum;
.source "AdobeAnalyticsEventParams.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;",
        ">;",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyCategory:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyContext:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyContextSequence:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyCount:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyDevice:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyEnd:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyError:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyErrorDescription:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyErrorType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyGuid:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyIMSFlow:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyIPAddress:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyLanguage:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyOffline:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyPagename:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertySession:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyStart:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertySubCategory:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertySubType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyUser:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyUserAgent:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyValue:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyVisitor:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field public static final enum AdobeEventPropertyWorkflow:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

.field private static _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 94
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyGuid"

    const-string/jumbo v3, "event.guid"

    invoke-direct {v1, v2, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyGuid:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 95
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyUser"

    const-string/jumbo v3, "event.user_guid"

    invoke-direct {v1, v2, v5, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyUser:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 96
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyVisitor"

    const-string/jumbo v3, "event.visitor_guid"

    invoke-direct {v1, v2, v6, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyVisitor:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 97
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyCloud"

    const-string/jumbo v3, "event.cloud_id"

    invoke-direct {v1, v2, v7, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 98
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyContext"

    const-string/jumbo v3, "event.context_guid"

    invoke-direct {v1, v2, v8, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyContext:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 99
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyContextSequence"

    const/4 v3, 0x5

    const-string/jumbo v4, "event.context_sequence"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyContextSequence:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 100
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyType"

    const/4 v3, 0x6

    const-string/jumbo v4, "event.type"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 101
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyStart"

    const/4 v3, 0x7

    const-string/jumbo v4, "event.dts_start"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyStart:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 102
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyEnd"

    const/16 v3, 0x8

    const-string/jumbo v4, "event.dts_end"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyEnd:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 103
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyWorkflow"

    const/16 v3, 0x9

    const-string/jumbo v4, "event.workflow"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyWorkflow:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 104
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyCategory"

    const/16 v3, 0xa

    const-string/jumbo v4, "event.category"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyCategory:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 105
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertySubCategory"

    const/16 v3, 0xb

    const-string/jumbo v4, "event.subcategory"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertySubCategory:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 106
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyOffline"

    const/16 v3, 0xc

    const-string/jumbo v4, "event.offline"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyOffline:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 107
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyDevice"

    const/16 v3, 0xd

    const-string/jumbo v4, "event.device_guid"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyDevice:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 108
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyIMSFlow"

    const/16 v3, 0xe

    const-string/jumbo v4, "event.idp"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyIMSFlow:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 109
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertySession"

    const/16 v3, 0xf

    const-string/jumbo v4, "event.session_guid"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertySession:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 110
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyError"

    const/16 v3, 0x10

    const-string/jumbo v4, "event.error_code"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyError:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 111
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyLanguage"

    const/16 v3, 0x11

    const-string/jumbo v4, "event.language"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyLanguage:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 112
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertySubType"

    const/16 v3, 0x12

    const-string/jumbo v4, "event.subtype"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertySubType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 113
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyCollection"

    const/16 v3, 0x13

    const-string/jumbo v4, "event.coll_dts"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 114
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyIPAddress"

    const/16 v3, 0x14

    const-string/jumbo v4, "event.ip"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyIPAddress:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 115
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyPagename"

    const/16 v3, 0x15

    const-string/jumbo v4, "event.pagename"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyPagename:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 116
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyUserAgent"

    const/16 v3, 0x16

    const-string/jumbo v4, "event.user_agent"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyUserAgent:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 117
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyErrorType"

    const/16 v3, 0x17

    const-string/jumbo v4, "event.error_type"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyErrorType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 118
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyErrorDescription"

    const/16 v3, 0x18

    const-string/jumbo v4, "event.error_desc"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyErrorDescription:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 119
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyCount"

    const/16 v3, 0x19

    const-string/jumbo v4, "event.count"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyCount:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 120
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    const-string/jumbo v2, "AdobeEventPropertyValue"

    const/16 v3, 0x1a

    const-string/jumbo v4, "event.value"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyValue:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 93
    const/16 v1, 0x1b

    new-array v1, v1, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyGuid:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v2, v1, v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyUser:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v2, v1, v5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyVisitor:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v2, v1, v6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v2, v1, v7

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyContext:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyContextSequence:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyStart:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyEnd:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyWorkflow:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyCategory:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertySubCategory:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyOffline:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyDevice:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyIMSFlow:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertySession:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyError:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyLanguage:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertySubType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyIPAddress:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyPagename:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyUserAgent:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyErrorType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyErrorDescription:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyCount:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyValue:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    aput-object v3, v1, v2

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->_map:Ljava/util/Map;

    .line 125
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 126
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->_map:Ljava/util/Map;

    iget-object v5, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->value:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->value:Ljava/lang/String;

    .line 135
    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->_map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->value:Ljava/lang/String;

    return-object v0
.end method
