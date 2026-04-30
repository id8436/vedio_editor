.class public Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;
.super Ljava/lang/Object;
.source "AdobeNotification.java"


# static fields
.field public static final Error:Ljava/lang/String; = "Error"


# instance fields
.field private _info:Ljava/util/Map;
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

.field private _notificationID:Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->_notificationID:Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    .line 25
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->_info:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->_notificationID:Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    .line 32
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->_info:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method public final getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->_notificationID:Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    return-object v0
.end method

.method public final getInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->_info:Ljava/util/Map;

    return-object v0
.end method
