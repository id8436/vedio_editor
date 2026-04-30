package com.adobe.premiereclip.dcx;

import android.util.Log;
import com.adobe.premiereclip.dcx.DCXModelController;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.ProjectManager;
import com.adobe.premiereclip.util.BitmapCache;
import com.adobe.premiereclip.util.Utilities;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.mortbay.jetty.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class DCXProjectManager implements DCXModelController.IDCXProjectManagerListener {
    private static DCXProjectManager instance;

    public static DCXProjectManager getInstance() {
        if (instance == null) {
            instance = new DCXProjectManager();
            DCXModelController.getInstance().setDCXProjectManagerListener(instance);
        }
        return instance;
    }

    private void addBasicDCXProject(BasicDCXModel basicDCXModel) {
        String mD5HashFromFilePath;
        if (!ProjectManager.getInstance().isProjectAdded(basicDCXModel.getDocumentID())) {
            int i = basicDCXModel.getProjectMode().equals(DCXProjectKeys.kDCXKey_Project_projectModeAuto) ? 1 : 2;
            String base64HashFromHexHash = null;
            if (basicDCXModel.getRenditionPath() != null && (mD5HashFromFilePath = Utilities.getMD5HashFromFilePath(basicDCXModel.getRenditionPath(), true)) != null) {
                base64HashFromHexHash = Utilities.getBase64HashFromHexHash(mD5HashFromFilePath);
            }
            ProjectManager.getInstance().addProject(ProjectManager.getInstance().createProject(basicDCXModel.getDocumentTitle(), basicDCXModel.getCreationTS(), basicDCXModel.getDocumentID(), basicDCXModel.getRenditionPath(), base64HashFromHexHash, i));
        }
    }

    private void updateBasicDCXProject(BasicDCXModel basicDCXModel) {
        Project projectWithKey = ProjectManager.getInstance().getProjectWithKey(basicDCXModel.getDocumentID());
        projectWithKey.setProjectName(basicDCXModel.getDocumentTitle());
        int i = 2;
        if (basicDCXModel.getProjectMode().equals(DCXProjectKeys.kDCXKey_Project_projectModeAuto)) {
            i = 1;
        }
        projectWithKey.setEditMode(i);
    }

    private void updateProjectListFromModelReloadDCX(List<BasicDCXModel> list) {
        HashMap map = new HashMap();
        ArrayList<Project> projectsList = ProjectManager.getInstance().getProjectsList();
        synchronized (list) {
            for (BasicDCXModel basicDCXModel : list) {
                if (!ProjectManager.getInstance().isProjectAdded(basicDCXModel.getDocumentID())) {
                    addBasicDCXProject(basicDCXModel);
                } else {
                    updateBasicDCXProject(basicDCXModel);
                }
                map.put(basicDCXModel.getDocumentID(), ProjectManager.getInstance().getProjectWithKey(basicDCXModel.getDocumentID()));
            }
        }
        for (Project project : projectsList) {
            if (!map.containsKey(project.projectKey)) {
                ProjectManager.getInstance().deleteProjectWithKey(project.projectKey);
            }
        }
    }

    public ArrayList<Project> getProjectListFromDCX() {
        DCXModelController.getInstance().initializeModelFromDisk();
        updateProjectListFromModelReloadDCX(DCXModelController.getInstance().getDataset());
        ArrayList<Project> arrayList = new ArrayList<>();
        for (Project project : ProjectManager.getInstance().getProjectsList()) {
            Log.d(HttpStatus.Found, project.getProjectName());
            if (!project.getProjectName().equals("preferences")) {
                arrayList.add(project);
            }
        }
        return arrayList;
    }

    @Override // com.adobe.premiereclip.dcx.DCXModelController.IDCXProjectManagerListener
    public void updatePosterForProject(String str, String str2, String str3) {
        Project projectWithKey = ProjectManager.getInstance().getProjectWithKey(str);
        if (projectWithKey != null) {
            if (str3 == null || !str3.equals(projectWithKey.getPosterHashValue())) {
                BitmapCache.markBitmapDirty(str);
                projectWithKey.setPosterPath(str2);
                projectWithKey.setPosterHashValue(str3);
            }
        }
    }
}
