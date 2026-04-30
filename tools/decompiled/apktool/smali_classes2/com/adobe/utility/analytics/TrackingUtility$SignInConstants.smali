.class public Lcom/adobe/utility/analytics/TrackingUtility$SignInConstants;
.super Ljava/lang/Object;
.source "TrackingUtility.java"


# static fields
.field public static final ACTIONSIGNINTYPE:Ljava/lang/String; = "mobile.psmix.signInType"

.field public static final ANALYTICSACTIONID_SIGNIN:Ljava/lang/String; = "Sign In"

.field public static final SIGNINTYPE_FIRSTTIME:Ljava/lang/String; = "signInType:firstTime"

.field public static final SIGNINTYPE_WITHNEWACCOUNT:Ljava/lang/String; = "signInType:withNewAccount"

.field public static final SIGNINTYPE_WITHOLDACCOUNT:Ljava/lang/String; = "signInType:withOldAccount"


# instance fields
.field final synthetic this$0:Lcom/adobe/utility/analytics/TrackingUtility;


# direct methods
.method public constructor <init>(Lcom/adobe/utility/analytics/TrackingUtility;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/adobe/utility/analytics/TrackingUtility$SignInConstants;->this$0:Lcom/adobe/utility/analytics/TrackingUtility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
