.class Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$1;
.super Ljava/lang/Object;
.source "AdobeContinuableEventHandler.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->access$000(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;)V

    .line 39
    return-void
.end method
