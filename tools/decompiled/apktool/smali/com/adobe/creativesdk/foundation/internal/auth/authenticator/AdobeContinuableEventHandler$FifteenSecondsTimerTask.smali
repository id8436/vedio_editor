.class Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$FifteenSecondsTimerTask;
.super Ljava/util/TimerTask;
.source "AdobeContinuableEventHandler.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$FifteenSecondsTimerTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$1;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$FifteenSecondsTimerTask;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$FifteenSecondsTimerTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->access$300(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;)V

    .line 89
    return-void
.end method
