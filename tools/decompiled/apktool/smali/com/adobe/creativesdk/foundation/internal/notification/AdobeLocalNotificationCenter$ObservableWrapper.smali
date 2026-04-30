.class Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$ObservableWrapper;
.super Ljava/util/Observable;
.source "AdobeLocalNotificationCenter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$1;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$ObservableWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public markChanged()V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$ObservableWrapper;->setChanged()V

    .line 29
    return-void
.end method
