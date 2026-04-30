.class Lcom/twitter/sdk/android/tweetcomposer/k;
.super Ljava/lang/Object;
.source "ComposerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/k;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/k;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->j:Lcom/twitter/sdk/android/tweetcomposer/e;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/k;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getTweetText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/e;->b(Ljava/lang/String;)V

    .line 95
    return-void
.end method
