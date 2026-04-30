.class public Lcom/adobe/premiereclip/project/sequence/Transition;
.super Ljava/lang/Object;
.source "Transition.java"


# instance fields
.field public blendFactor:F

.field public type:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;F)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/Transition;->type:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    .line 33
    iput p2, p0, Lcom/adobe/premiereclip/project/sequence/Transition;->blendFactor:F

    .line 34
    return-void
.end method
