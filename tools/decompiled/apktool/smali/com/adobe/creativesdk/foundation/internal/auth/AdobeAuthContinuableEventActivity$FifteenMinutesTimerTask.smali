.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$FifteenMinutesTimerTask;
.super Ljava/util/TimerTask;
.source "AdobeAuthContinuableEventActivity.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$FifteenMinutesTimerTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$FifteenMinutesTimerTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->access$000(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;)V

    .line 95
    return-void
.end method
