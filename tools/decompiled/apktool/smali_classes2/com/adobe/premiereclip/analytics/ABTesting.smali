.class public abstract Lcom/adobe/premiereclip/analytics/ABTesting;
.super Ljava/lang/Object;
.source "ABTesting.java"


# instance fields
.field protected final TEST_REFRESH_TIMEOUT:J

.field protected context:Landroid/content/Context;

.field protected defaultContentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final successTargetName:Ljava/lang/String;

.field protected final targetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/adobe/premiereclip/analytics/ABTesting;->TEST_REFRESH_TIMEOUT:J

    .line 44
    iput-object p1, p0, Lcom/adobe/premiereclip/analytics/ABTesting;->targetName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/adobe/premiereclip/analytics/ABTesting;->successTargetName:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTesting;->defaultContentMap:Ljava/util/Map;

    .line 48
    iput-object p3, p0, Lcom/adobe/premiereclip/analytics/ABTesting;->context:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public abstract decideGroup(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V
.end method
