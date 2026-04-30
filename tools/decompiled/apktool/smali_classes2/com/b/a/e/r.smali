.class public Lcom/b/a/e/r;
.super Landroid/support/v4/app/Fragment;
.source "SupportRequestManagerFragment.java"


# instance fields
.field private a:Lcom/b/a/l;

.field private final b:Lcom/b/a/e/a;

.field private final c:Lcom/b/a/e/p;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/b/a/e/r;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/b/a/e/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/b/a/e/a;

    invoke-direct {v0}, Lcom/b/a/e/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/b/a/e/r;-><init>(Lcom/b/a/e/a;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/b/a/e/a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 29
    new-instance v0, Lcom/b/a/e/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/b/a/e/t;-><init>(Lcom/b/a/e/r;Lcom/b/a/e/s;)V

    iput-object v0, p0, Lcom/b/a/e/r;->c:Lcom/b/a/e/p;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/b/a/e/r;->d:Ljava/util/HashSet;

    .line 42
    iput-object p1, p0, Lcom/b/a/e/r;->b:Lcom/b/a/e/a;

    .line 43
    return-void
.end method

.method private a(Lcom/b/a/e/r;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/b/a/e/r;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method private b(Lcom/b/a/e/r;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/b/a/e/r;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method


# virtual methods
.method a()Lcom/b/a/e/a;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/b/a/e/r;->b:Lcom/b/a/e/a;

    return-object v0
.end method

.method public a(Lcom/b/a/l;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/b/a/e/r;->a:Lcom/b/a/l;

    .line 52
    return-void
.end method

.method public b()Lcom/b/a/l;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/b/a/e/r;->a:Lcom/b/a/l;

    return-object v0
.end method

.method public c()Lcom/b/a/e/p;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/b/a/e/r;->c:Lcom/b/a/e/p;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 121
    :try_start_0
    invoke-static {}, Lcom/b/a/e/o;->a()Lcom/b/a/e/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/e/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/e/o;->a(Landroid/support/v4/app/FragmentManager;)Lcom/b/a/e/r;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/e/r;->e:Lcom/b/a/e/r;

    .line 123
    iget-object v0, p0, Lcom/b/a/e/r;->e:Lcom/b/a/e/r;

    if-eq v0, p0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/b/a/e/r;->e:Lcom/b/a/e/r;

    invoke-direct {v0, p0}, Lcom/b/a/e/r;->a(Lcom/b/a/e/r;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    const-string/jumbo v1, "SupportRMFragment"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string/jumbo v1, "SupportRMFragment"

    const-string/jumbo v2, "Unable to register fragment with root"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/b/a/e/r;->b:Lcom/b/a/e/a;

    invoke-virtual {v0}, Lcom/b/a/e/a;->c()V

    .line 160
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 138
    iget-object v0, p0, Lcom/b/a/e/r;->e:Lcom/b/a/e/r;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/b/a/e/r;->e:Lcom/b/a/e/r;

    invoke-direct {v0, p0}, Lcom/b/a/e/r;->b(Lcom/b/a/e/r;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/e/r;->e:Lcom/b/a/e/r;

    .line 142
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 167
    iget-object v0, p0, Lcom/b/a/e/r;->a:Lcom/b/a/l;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/b/a/e/r;->a:Lcom/b/a/l;

    invoke-virtual {v0}, Lcom/b/a/l;->a()V

    .line 170
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 147
    iget-object v0, p0, Lcom/b/a/e/r;->b:Lcom/b/a/e/a;

    invoke-virtual {v0}, Lcom/b/a/e/a;->a()V

    .line 148
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 153
    iget-object v0, p0, Lcom/b/a/e/r;->b:Lcom/b/a/e/a;

    invoke-virtual {v0}, Lcom/b/a/e/a;->b()V

    .line 154
    return-void
.end method
