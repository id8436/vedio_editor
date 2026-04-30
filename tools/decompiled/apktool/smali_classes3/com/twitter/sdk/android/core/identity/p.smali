.class Lcom/twitter/sdk/android/core/identity/p;
.super Ljava/lang/Object;
.source "TwitterLoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;


# direct methods
.method private constructor <init>(Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/p;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;Lcom/twitter/sdk/android/core/identity/o;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/identity/p;-><init>(Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 175
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    const-string/jumbo v0, "Twitter"

    const-string/jumbo v1, "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button."

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    return-void
.end method

.method private a(Lcom/twitter/sdk/android/core/c;)V
    .locals 2

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    const-string/jumbo v0, "Twitter"

    const-string/jumbo v1, "Callback must not be null, did you call setCallback?"

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/p;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->d:Lcom/twitter/sdk/android/core/c;

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/identity/p;->a(Lcom/twitter/sdk/android/core/c;)V

    .line 158
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/p;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/identity/p;->a(Landroid/app/Activity;)V

    .line 160
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/p;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/l;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/p;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/p;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->d:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/sdk/android/core/identity/l;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/c;)V

    .line 162
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/p;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/p;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 165
    :cond_0
    return-void
.end method
