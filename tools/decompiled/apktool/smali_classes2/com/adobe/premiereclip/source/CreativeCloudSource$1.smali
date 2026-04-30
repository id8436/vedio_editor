.class Lcom/adobe/premiereclip/source/CreativeCloudSource$1;
.super Ljava/lang/Object;
.source "CreativeCloudSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/source/CreativeCloudSource;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/source/CreativeCloudSource;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;->this$0:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;->AdobeAuthLoginAttemptFailed:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;

    if-ne p1, v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;->this$0:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->access$000(Lcom/adobe/premiereclip/source/CreativeCloudSource;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;->this$0:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->access$000(Lcom/adobe/premiereclip/source/CreativeCloudSource;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;->didLogin(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;->this$0:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->access$002(Lcom/adobe/premiereclip/source/CreativeCloudSource;Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;->AdobeAuthLoggedIn:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;

    if-ne p1, v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;->this$0:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->access$000(Lcom/adobe/premiereclip/source/CreativeCloudSource;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;->this$0:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->access$000(Lcom/adobe/premiereclip/source/CreativeCloudSource;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;->didLogin(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;->this$0:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->access$002(Lcom/adobe/premiereclip/source/CreativeCloudSource;Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;

    goto :goto_0

    .line 116
    :cond_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;->AdobeAuthLogoutAttemptFailed:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;

    if-ne p1, v0, :cond_6

    .line 117
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;->this$0:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->access$100(Lcom/adobe/premiereclip/source/CreativeCloudSource;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 118
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;->this$0:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->access$100(Lcom/adobe/premiereclip/source/CreativeCloudSource;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;->didLogout(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;->this$0:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->access$102(Lcom/adobe/premiereclip/source/CreativeCloudSource;Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;

    goto :goto_0

    .line 122
    :cond_6
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;->AdobeAuthLoggedOut:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;

    if-ne p1, v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;->this$0:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->access$100(Lcom/adobe/premiereclip/source/CreativeCloudSource;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 124
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;->this$0:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->access$100(Lcom/adobe/premiereclip/source/CreativeCloudSource;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;->didLogout(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 127
    :cond_7
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;->this$0:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->access$102(Lcom/adobe/premiereclip/source/CreativeCloudSource;Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;

    goto :goto_0
.end method
