.class Lcom/facebook/login/KatanaProxyLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "KatanaProxyLoginMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/KatanaProxyLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/facebook/login/f;

    invoke-direct {v0}, Lcom/facebook/login/f;-><init>()V

    sput-object v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 173
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 42
    return-void
.end method

.method private a(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 95
    invoke-direct {p0, v1}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 96
    const-string/jumbo v3, "error_code"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-direct {p0, v1}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 99
    const-string/jumbo v5, "e2e"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-static {v5}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 101
    invoke-virtual {p0, v5}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->a(Ljava/lang/String;)V

    .line 104
    :cond_0
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 106
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/facebook/j;->b:Lcom/facebook/j;

    .line 108
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->d()Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-static {v2, v1, v3, v4}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->a(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/j;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v1

    .line 109
    invoke-static {p1, v1}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;
    :try_end_0
    .catch Lcom/facebook/q; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :cond_1
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    invoke-virtual {v1}, Lcom/facebook/q;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_2
    sget-object v1, Lcom/facebook/i/ar;->a:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    sget-object v1, Lcom/facebook/i/ar;->b:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    invoke-static {p1, v0}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_3
    invoke-static {p1, v2, v4, v3}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    if-nez v0, :cond_0

    .line 142
    const-string/jumbo v0, "error_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_0
    return-object v0
.end method

.method private b(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;
    .locals 4

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 125
    const-string/jumbo v2, "error_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    const-string/jumbo v3, "CONNECTION_FAILURE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    invoke-direct {p0, v0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {p1, v1, v0, v2}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, v1}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string/jumbo v0, "error_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    if-nez v0, :cond_0

    .line 150
    const-string/jumbo v0, "error_description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_0
    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "katana_proxy_auth"

    return-object v0
.end method

.method a(IILandroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->c()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 73
    if-nez p3, :cond_0

    .line 75
    const-string/jumbo v1, "Operation canceled"

    invoke-static {v0, v1}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 85
    :goto_0
    if-eqz v0, :cond_3

    .line 86
    iget-object v1, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginClient;->a(Lcom/facebook/login/LoginClient$Result;)V

    .line 90
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 76
    :cond_0
    if-nez p2, :cond_1

    .line 77
    invoke-direct {p0, v0, p3}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->b(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    .line 79
    const-string/jumbo v1, "Unexpected resultCode from authorization."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0, v0, p3}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->a(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->h()V

    goto :goto_1
.end method

.method protected a(Landroid/content/Intent;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 156
    if-nez p1, :cond_0

    .line 168
    :goto_0
    return v0

    .line 161
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->a()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method a(Lcom/facebook/login/LoginClient$Request;)Z
    .locals 7

    .prologue
    .line 51
    invoke-static {}, Lcom/facebook/login/LoginClient;->l()Ljava/lang/String;

    move-result-object v3

    .line 52
    iget-object v0, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    .line 53
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->d()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/util/Set;

    move-result-object v2

    .line 57
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->f()Z

    move-result v4

    .line 58
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->g()Z

    move-result v5

    .line 59
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->c()Lcom/facebook/login/a;

    move-result-object v6

    .line 52
    invoke-static/range {v0 .. v6}, Lcom/facebook/i/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/a;)Landroid/content/Intent;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "e2e"

    invoke-virtual {p0, v1, v3}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Lcom/facebook/login/LoginClient;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->a(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    return-void
.end method
