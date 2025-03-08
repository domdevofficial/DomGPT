<?php
require 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $userMessage = strtolower(trim($_POST["message"]));
    $normalizedMessage = preg_replace("/[^\w\s]/", "", $userMessage);

    if (strpos($userMessage, "learn|") === 0) {
        $parts = explode("|", $_POST["message"], 3);
        if (count($parts) == 3) {
            $question = trim($parts[1]);
            $answer = trim($parts[2]);
            $normalized_question = strtolower(trim(preg_replace("/[^\w\s]/", "", $question)));

            $stmt = $conn->prepare("INSERT INTO knowledge (question, answer, normalized_question) 
                                    VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE answer=?, normalized_question=?");
            $stmt->bind_param("sssss", $question, $answer, $normalized_question, $answer, $normalized_question);

            if ($stmt->execute()) {
                echo "Got it! I’ve learned: '$question' -> '$answer'";
            } else {
                echo "Error learning: " . $conn->error;
            }
            $stmt->close();
        } else {
            echo "Invalid format. Use: learn|your_question|your_answer";
        }
    } else {
        $stmt = $conn->prepare("SELECT answer FROM knowledge WHERE normalized_question = ?");
        $stmt->bind_param("s", $normalizedMessage);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            echo $row["answer"];
        } else {
            echo "I don't know it yet. Please Teach Me! Use: learn|your_question|your_answer";
        }
        $stmt->close();
    }
}

$conn->close();
?>
