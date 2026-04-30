.class public interface abstract Lcom/adobe/creativesdk/behance/IAdobeBehanceSearchProjectListener;
.super Ljava/lang/Object;
.source "IAdobeBehanceSearchProjectListener.java"

# interfaces
.implements Lcom/behance/sdk/IBehanceSDKSearchProjectListener;


# virtual methods
.method public abstract onSearchProjectsFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onSearchProjectsSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;)V"
        }
    .end annotation
.end method
