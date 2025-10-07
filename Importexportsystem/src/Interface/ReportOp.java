package Interface;

import java.util.List;
import Pojo.ReportPojo;

public interface ReportOp {
    void reportProduct(ReportPojo pojo); // Method to report a product issue

    void updateReportStatus(int reportId, String newStatus); // Method to update the status of a reported issue

    List<ReportPojo> viewReportedIssues(int consumerId); // Method to view reported issues for a consumer

    List<ReportPojo> getReportedIssuesForSeller(int sellerId); // Method to view reported issues for a seller
}