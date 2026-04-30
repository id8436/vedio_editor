.class Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1$2;
.super Ljava/lang/Object;
.source "AdobeSendToDesktopApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1$2;->this$1:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1$2;->val$error:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1$2;->this$1:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;->this$0:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->sendCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1$2;->val$error:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    .line 140
    return-void
.end method
