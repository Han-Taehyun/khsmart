package edumgt.common.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


@SuppressWarnings("unused")
@Controller
public class FileUtil {
	
	public String filePath = "C:\\tom99\\webapps\\khadmin\\images"; 
	
	public String saveImgFile(MultipartFile upfiles, String oldfilename) {

		String newName = "";
			
			if ( !upfiles.isEmpty() ) {
				newName = getNewName() + getFileExtension(upfiles.getOriginalFilename());
				saveFile2(upfiles, filePath + "/" , newName);
			}else {
				newName = oldfilename;
			}
		
		return newName;
	}
	
	public List<FileVO> saveAllFilesBB(List<MultipartFile> upfiles) {

		List<FileVO> filelist = new ArrayList<FileVO>();

		for (MultipartFile uploadfile : upfiles ) {
			if (uploadfile.getSize() == 0) {
				continue;
			}

			String newName = uploadfile.getOriginalFilename();
			saveFile2(uploadfile, filePath + "/" , newName);

			FileVO filedo = new FileVO();
			filedo.setFilename(uploadfile.getOriginalFilename());
			filedo.setRealname(uploadfile.getOriginalFilename());
			filedo.setFilesize(uploadfile.getSize());
			filelist.add(filedo);
		}
		return filelist;
	}
	
	@RequestMapping(value = "/fileSave")
	public List<FileVO> saveAllFilesBB(List<MultipartFile> upfiles,
			HttpServletRequest request, HttpServletResponse response, String filepath) {
		
		

		String filePath = filepath;
		
		
		
		List<FileVO> filelist = new ArrayList<FileVO>();

		for (MultipartFile uploadfile : upfiles ) {
			if (uploadfile.getSize() == 0) {
				continue;
			}

			String newName = uploadfile.getOriginalFilename();
			saveFile2(uploadfile, filePath + "/" , newName);

			FileVO filedo = new FileVO();
			filedo.setFilename(uploadfile.getOriginalFilename());
			filedo.setRealname(uploadfile.getOriginalFilename());
			filedo.setFilesize(uploadfile.getSize());
			filelist.add(filedo);
		}
		return filelist;
	}
	
	public String saveFile2(MultipartFile file, String basePath, String fileName){
		if (file == null || file.getName().equals("") || file.getSize() < 1) {
			return null;
		}

		makeBasePath(basePath);
		String serverFullPath = basePath + fileName;

		File file1 = new File(serverFullPath);
		try {
			file.transferTo(file1);
		} catch (IllegalStateException ex) {
			System.out.println("IllegalStateException: " + ex.toString());
		} catch (IOException ex) {
			System.out.println("IOException: " + ex.toString());
		}

		return serverFullPath;
	}

	public void makeBasePath(String path) {
		File dir = new File(path); 
		if (!dir.exists()) {
			dir.mkdirs();
		}
	}

	public String saveFile(MultipartFile file, String basePath, String fileName){
		if (file == null || file.getName().equals("") || file.getSize() < 1) {
			return null;
		}

		makeBasePath(basePath);
		String serverFullPath = basePath + fileName;

		File file1 = new File(serverFullPath);
		try {
			file.transferTo(file1);
		} catch (IllegalStateException ex) {
			System.out.println("IllegalStateException: " + ex.toString());
		} catch (IOException ex) {
			System.out.println("IOException: " + ex.toString());
		}

		return serverFullPath;
	}

	public String getNewName() {
		SimpleDateFormat ft = new SimpleDateFormat("yyyyMMddhhmmssSSS");
		return ft.format(new Date()) + (int) (Math.random() * 10);
	}

	public String getFileExtension(String filename) {
		Integer mid = filename.lastIndexOf(".");
		return filename.substring(mid, filename.length());
	}

	public String getRealPath(String path, String filename) {
		return path + filename.substring(0,4) + "/";
	}

	public List<FileVO> saveAllFiles(List<MultipartFile> uploadfile) {
		// TODO Auto-generated method stub
		return null;
	}
}
