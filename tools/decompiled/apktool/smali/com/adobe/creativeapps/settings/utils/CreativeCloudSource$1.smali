.class Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$1;
.super Ljava/lang/Object;
.source "CreativeCloudSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$1;->this$0:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;->AdobeAuthLoggedIn:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;

    if-ne p1, v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$1;->this$0:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->access$000(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;)Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLoginCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$1;->this$0:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->access$000(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;)Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLoginCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLoginCallback;->didLogin(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$1;->this$0:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    invoke-static {v0, v1}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->access$002(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLoginCallback;)Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLoginCallback;

    .line 55
    :cond_1
    :goto_0
    return-void

    .line 42
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;->AdobeAuthLogoutAttemptFailed:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;

    if-ne p1, v0, :cond_4

    .line 43
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$1;->this$0:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->access$100(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;)Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$1;->this$0:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->access$100(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;)Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;->didLogout(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$1;->this$0:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    invoke-static {v0, v1}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->access$102(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;)Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;

    goto :goto_0

    .line 48
    :cond_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;->AdobeAuthLoggedOut:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;

    if-ne p1, v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$1;->this$0:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->access$100(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;)Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 50
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$1;->this$0:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->access$100(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;)Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;->didLogout(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 53
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$1;->this$0:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    invoke-static {v0, v1}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->access$102(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;)Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;

    goto :goto_0
.end method
