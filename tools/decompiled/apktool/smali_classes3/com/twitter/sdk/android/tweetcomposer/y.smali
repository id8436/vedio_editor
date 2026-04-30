.class public Lcom/twitter/sdk/android/tweetcomposer/y;
.super Ljava/lang/Object;
.source "TweetComposer.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/net/URL;

.field private d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/y;->a:Landroid/content/Context;

    .line 115
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/y;->b()Landroid/content/Intent;

    move-result-object v0

    .line 173
    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/y;->c()Landroid/content/Intent;

    move-result-object v0

    .line 177
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/y;
    .locals 2

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/y;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "text already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/y;->b:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method b()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 181
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/y;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/y;->c:Ljava/net/URL;

    if-eqz v2, :cond_2

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 191
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/y;->c:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_2
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string/jumbo v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/y;->d:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 200
    const-string/jumbo v0, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/y;->d:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    const-string/jumbo v0, "image/jpeg"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/y;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 205
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 209
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "com.twitter.android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 210
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    .line 216
    :goto_0
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/y;->c:Ljava/net/URL;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 222
    :goto_0
    const-string/jumbo v1, "https://twitter.com/intent/tweet?text=%s&url=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetcomposer/y;->b:Ljava/lang/String;

    .line 223
    invoke-static {v4}, Lcom/twitter/sdk/android/core/internal/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/y;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/y;->a()Landroid/content/Intent;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/y;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 233
    return-void
.end method
