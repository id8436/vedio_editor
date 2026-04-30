.class final Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/util/ACLibraryManagerUtil$1;
.super Ljava/lang/Object;
.source "ACLibraryManagerUtil.java"

# interfaces
.implements Ljava/util/Observer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->destroyInstance()V

    .line 35
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/util/ACLibraryManagerUtil;->createAndStartLibraryAppBridge()V

    .line 36
    return-void
.end method
