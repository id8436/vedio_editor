.class Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1$1;
.super Ljava/lang/Object;
.source "AdobeSendToDesktopApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1$1;->this$1:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1$1;->this$1:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;->this$0:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->sendCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onSuccess()V

    .line 127
    return-void
.end method
