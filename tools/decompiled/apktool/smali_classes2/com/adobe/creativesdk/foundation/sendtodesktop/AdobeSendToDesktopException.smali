.class public Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;
.super Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
.source "AdobeSendToDesktopException.java"


# instance fields
.field private description:Ljava/lang/String;

.field private final errorCode:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p2, p4}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;-><init>(Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 44
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;->description:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;->errorCode:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    .line 46
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;->errorCode:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    return-object v0
.end method
