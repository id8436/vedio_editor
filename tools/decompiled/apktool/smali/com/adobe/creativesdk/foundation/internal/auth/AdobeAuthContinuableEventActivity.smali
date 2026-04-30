.class public Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;
.super Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;
.source "AdobeAuthContinuableEventActivity.java"


# static fields
.field private static _activityClosedDueToManualClose:Z


# instance fields
.field private _continuableFragment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;

.field _jumpURL:Ljava/lang/String;

.field private _webView:Landroid/webkit/WebView;

.field continuableFragmentTag:Ljava/lang/String;

.field timer:Ljava/util/Timer;

.field private timerTask:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$FifteenMinutesTimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->_activityClosedDueToManualClose:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->timerTask:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$FifteenMinutesTimerTask;

    .line 81
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->_jumpURL:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "Continuablefragment"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->continuableFragmentTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->handleTimerComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->handleCloseButtonClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->handleActivityCloseWithSuccess()V

    return-void
.end method

.method private handleActivityCloseWithSuccess()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->setResult(I)V

    .line 214
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->finish()V

    .line 215
    return-void
.end method

.method private handleCloseButtonClicked()V
    .locals 3

    .prologue
    .line 176
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->_activityClosedDueToManualClose:Z

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->setResult(I)V

    .line 178
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNotificationContinualActivityClosed:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 179
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 180
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->finish()V

    .line 181
    return-void
.end method

.method private handleTimerComplete()V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 210
    return-void
.end method

.method public static isLastActivityClosedDuetoManualClose()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->_activityClosedDueToManualClose:Z

    return v0
.end method

.method private startTimer()V
    .locals 6

    .prologue
    const-wide/32 v2, 0xdbba0

    .line 185
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$FifteenMinutesTimerTask;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$FifteenMinutesTimerTask;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->timerTask:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$FifteenMinutesTimerTask;

    .line 186
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->timer:Ljava/util/Timer;

    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->timerTask:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$FifteenMinutesTimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 188
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onBackPressed()V

    .line 162
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->_continuableFragment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->shouldHandleBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->_continuableFragment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->handleBackPressed()V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->handleCloseButtonClicked()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x1020002

    const/4 v3, 0x0

    .line 101
    sput-boolean v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->_activityClosedDueToManualClose:Z

    .line 102
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->stopContinuableTimer()V

    .line 104
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->JUMP_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->_jumpURL:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 107
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->setApplicationContext(Landroid/content/Context;)V

    .line 109
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$layout;->adobe_csdk_ux_auth_activity_container_view:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->setContentView(I)V

    .line 114
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_actionbar_toolbar:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 116
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/auth/R$dimen;->abc_action_bar_content_inset_material:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 118
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 121
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 124
    :cond_0
    invoke-virtual {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/auth/R$string;->adobe_csdk_auth_sign_in_close:I

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->getTextView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 136
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->continuableFragmentTag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;

    .line 138
    if-nez v0, :cond_1

    .line 139
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;-><init>()V

    .line 141
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 142
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->JUMP_URL:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->_jumpURL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;->setArguments(Landroid/os/Bundle;)V

    .line 145
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->_continuableFragment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;

    .line 146
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_creativesdk_foundation_auth_fragment_container:I

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->continuableFragmentTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 156
    :goto_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->startTimer()V

    .line 157
    return-void

    .line 152
    :cond_1
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->_continuableFragment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$AdobeAuthContinuableEventFragment;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onDestroy()V

    .line 172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 173
    return-void
.end method
