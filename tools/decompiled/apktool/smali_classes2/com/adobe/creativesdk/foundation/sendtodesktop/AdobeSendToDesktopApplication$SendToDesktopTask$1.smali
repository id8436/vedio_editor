.class Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;
.super Ljava/lang/Object;
.source "AdobeSendToDesktopApplication.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;->this$0:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;->this$0:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->access$000(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;->this$0:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->access$000(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1$2;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;->this$0:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->sendCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;->this$0:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->access$000(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;->this$0:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->access$000(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1$1;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;->this$0:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->sendCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onSuccess()V

    goto :goto_0
.end method
