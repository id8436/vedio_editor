.class Lcom/twitter/sdk/android/tweetcomposer/c;
.super Ljava/lang/Object;
.source "ComposerController.java"


# instance fields
.field final a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

.field final b:Lcom/twitter/sdk/android/core/aj;

.field final c:Landroid/net/Uri;

.field final d:Lcom/twitter/sdk/android/tweetcomposer/a;

.field final e:Lcom/twitter/sdk/android/tweetcomposer/g;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/aj;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/a;)V
    .locals 8

    .prologue
    .line 44
    new-instance v7, Lcom/twitter/sdk/android/tweetcomposer/g;

    invoke-direct {v7}, Lcom/twitter/sdk/android/tweetcomposer/g;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/twitter/sdk/android/tweetcomposer/c;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/aj;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/a;Lcom/twitter/sdk/android/tweetcomposer/g;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/aj;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/a;Lcom/twitter/sdk/android/tweetcomposer/g;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    .line 52
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->b:Lcom/twitter/sdk/android/core/aj;

    .line 53
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->c:Landroid/net/Uri;

    .line 54
    iput-object p6, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->d:Lcom/twitter/sdk/android/tweetcomposer/a;

    .line 55
    iput-object p7, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->e:Lcom/twitter/sdk/android/tweetcomposer/g;

    .line 57
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/f;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetcomposer/f;-><init>(Lcom/twitter/sdk/android/tweetcomposer/c;)V

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCallbacks(Lcom/twitter/sdk/android/tweetcomposer/e;)V

    .line 58
    invoke-virtual {p0, p4, p5}, Lcom/twitter/sdk/android/tweetcomposer/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setTweetText(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/c;->a()V

    .line 60
    invoke-virtual {p0, p3}, Lcom/twitter/sdk/android/tweetcomposer/c;->a(Landroid/net/Uri;)V

    .line 61
    invoke-virtual {p7}, Lcom/twitter/sdk/android/tweetcomposer/g;->b()Lcom/twitter/sdk/android/tweetcomposer/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetcomposer/h;->a()V

    .line 62
    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 160
    rsub-int v0, p0, 0x8c

    return v0
.end method

.method static b(I)Z
    .locals 1

    .prologue
    .line 167
    if-lez p0, :cond_0

    const/16 v0, 0x8c

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(I)Z
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0x8c

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->e:Lcom/twitter/sdk/android/tweetcomposer/g;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/g;->a()Lcom/twitter/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/f;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 71
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->e:Lcom/twitter/sdk/android/tweetcomposer/g;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->b:Lcom/twitter/sdk/android/core/aj;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/g;->a(Lcom/twitter/sdk/android/core/aj;)Lcom/twitter/sdk/android/core/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/w;->getAccountService()Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object v0

    .line 80
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lf/g;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/d;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/d;-><init>(Lcom/twitter/sdk/android/tweetcomposer/c;)V

    invoke-interface {v0, v1}, Lf/g;->a(Lf/j;)V

    .line 92
    return-void
.end method

.method a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setImageView(Landroid/net/Uri;)V

    .line 98
    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->e:Lcom/twitter/sdk/android/tweetcomposer/g;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/g;->b()Lcom/twitter/sdk/android/tweetcomposer/h;

    move-result-object v0

    const-string/jumbo v1, "cancel"

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/h;->a(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/c;->c()V

    .line 142
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->d:Lcom/twitter/sdk/android/tweetcomposer/a;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetcomposer/a;->a()V

    .line 143
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.twitter.sdk.android.tweetcomposer.TWEET_COMPOSE_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    return-void
.end method
