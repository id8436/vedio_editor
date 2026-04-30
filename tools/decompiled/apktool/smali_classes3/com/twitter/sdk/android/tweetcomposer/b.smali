.class Lcom/twitter/sdk/android/tweetcomposer/b;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetcomposer/a;


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/b;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/b;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->finish()V

    .line 69
    return-void
.end method
